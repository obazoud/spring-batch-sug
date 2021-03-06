package fr.sug.springbatch.example;

import org.apache.commons.io.IOUtils;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.batch.core.BatchStatus;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobParameter;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.test.JobLauncherTestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * A simple test.
 *
 * @author bazoud
 * @version $Id$
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:fr/sug/springbatch/example/batch-test-context.xml"})
public class SpringContextTest {

    private SimpleJdbcTemplate simpleJdbcTemplate;

    @Autowired
    private JobLauncherTestUtils jobLauncherTestUtils;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.simpleJdbcTemplate = new SimpleJdbcTemplate(dataSource);
    }

    @SuppressWarnings("unchecked")
    @Test
    @DirtiesContext
    public void testLaunchJob() throws Exception {

        // Lauch our job:

        Map<String, JobParameter> parameters = new HashMap<String, JobParameter>();
        parameters.put("recipes", new JobParameter(getResource("recipes.xml")));
        JobExecution jobExecution = jobLauncherTestUtils.launchJob(new JobParameters(parameters));

        // Batch should be completed:

        Assert.assertEquals(jobExecution.getExitStatus().getExitDescription(), BatchStatus.COMPLETED, jobExecution.getStatus());

        // Our data should be present into our database:

        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Recipe"));
        Assert.assertEquals("Burton Ale", simpleJdbcTemplate.queryForObject("SELECT name FROM Recipe LIMIT 1", String.class));
        Assert.assertEquals(6, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Hop"));
        Assert.assertEquals(11, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Fermentable"));
        Assert.assertEquals(6, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Misc"));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Yeast"));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Style"));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Equipment"));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Mash"));
        Assert.assertEquals(6, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from MashStep"));
        Assert.assertEquals(2, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Water"));

        // TODO we could use DbUnit to better check data
        Map<String, String> argsRecipe = new HashMap<String, String>();
        argsRecipe.put("name", "Dry Stout");
        String recipeId = simpleJdbcTemplate.queryForObject("SELECT id FROM Recipe where name=:name", String.class, argsRecipe);
        Assert.assertNotNull(recipeId);

        // Foreign keys should reference each other:

        argsRecipe.clear();
        argsRecipe.put("recipeId", recipeId);
        Assert.assertEquals(1, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Hop where recipeId=:recipeId", argsRecipe));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Fermentable where recipeId=:recipeId", argsRecipe));
        Assert.assertEquals(2, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Misc where recipeId=:recipeId", argsRecipe));
        Assert.assertEquals(1, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Yeast where recipeId=:recipeId", argsRecipe));
        Assert.assertEquals(1, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Water where recipeId=:recipeId", argsRecipe));
        Assert.assertEquals(1, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Style where id=:recipeId", argsRecipe));
        Assert.assertEquals(1, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Equipment where id=:recipeId", argsRecipe));
        Assert.assertEquals(1, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Mash where id=:recipeId", argsRecipe));
        String mashId = simpleJdbcTemplate.queryForObject("SELECT id FROM Mash where id=:recipeId", String.class, argsRecipe);
        argsRecipe.put("mashId", mashId);
        Assert.assertEquals(2, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from MashStep where mashId=:mashId", argsRecipe));

        // Excludes file should exist:
        File excludes = new File("/tmp/sug/recipesexcludes.txt");
        Assert.assertTrue(excludes.exists());

        // Excludes file should contain Wit:
        List<String> content = IOUtils.readLines(new FileInputStream(excludes));
        Assert.assertEquals(1, content.size());
        Assert.assertEquals("Wit", content.get(0));
    }

    String getResource(String path) {
        return "file://" + Thread.currentThread().getContextClassLoader().getResource(path).getFile();
    }

}
