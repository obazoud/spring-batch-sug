package fr.sug.springbatch.example;

import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
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

/**
 * 
 * A simple test.
 * 
 * @author bazoud
 * 
 * @version $Id$
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:fr/sug/springbatch/example/batch-test-context.xml" })
public class SpringContextTest {
    // logger
    private static final Logger LOG = Logger.getLogger(SpringContextTest.class);

    private SimpleJdbcTemplate simpleJdbcTemplate;

    @Autowired
    private JobLauncherTestUtils jobLauncherTestUtils;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.simpleJdbcTemplate = new SimpleJdbcTemplate(dataSource);
    }

    @Test
    @DirtiesContext
    public void testLaunchJob() throws Exception {
        Map<String, JobParameter> parameters = new HashMap<String, JobParameter>();
        parameters.put("recipes", new JobParameter(getResource("recipes.xml")));

        JobExecution jobExecution = jobLauncherTestUtils.launchJob(new JobParameters(parameters));

        // Assert stuff
        Assert.assertEquals(jobExecution.getExitStatus().getExitDescription(), BatchStatus.COMPLETED, jobExecution.getStatus());
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Recipe"));
        Assert.assertEquals(6, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Hop"));
        Assert.assertEquals(11, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Fermentable"));
        Assert.assertEquals(6, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Misc"));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Yeast"));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Style"));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Equipment"));
        Assert.assertEquals(3, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Mash"));
        Assert.assertEquals(6, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from MashStep"));
        Assert.assertEquals(2, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Water"));

        Map<String, String> argsRecipe = new HashMap<String, String>();
        argsRecipe.put("name", "Dry Stout");
        String recipeId = simpleJdbcTemplate.queryForObject("SELECT id FROM Recipe where name=:name", String.class, argsRecipe);
        Assert.assertNotNull(recipeId);

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
    }

    String getResource(String path) {
        return "file://" + Thread.currentThread().getContextClassLoader().getResource(path).getFile();
    }

}
