package fr.sug.springbatch.example.masterdetail;

import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

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
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.transaction.TransactionalTestExecutionListener;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:fr/sug/springbatch/example/masterdetail/batch-test-context.xml"})
@TestExecutionListeners({DependencyInjectionTestExecutionListener.class,
        DirtiesContextTestExecutionListener.class,
        TransactionalTestExecutionListener.class})
public class MasterDetailTest {

    private SimpleJdbcTemplate simpleJdbcTemplate;

    @Autowired
    private JobLauncherTestUtils jobLauncherTestUtils;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.simpleJdbcTemplate = new SimpleJdbcTemplate(dataSource);
    }

    @Test
    @DirtiesContext
    public void simpleFile() throws Exception {

        // Lauch our job:

        Map<String, JobParameter> parameters = new HashMap<String, JobParameter>();
        parameters.put("recipes", new JobParameter(getTestFile("recipes-master-detail.txt")));
        JobExecution jobExecution = jobLauncherTestUtils.launchJob(new JobParameters(parameters));

        // Batch should be completed:

        Assert.assertEquals(jobExecution.getExitStatus().getExitDescription(), BatchStatus.COMPLETED, jobExecution.getStatus());

        // Our data should be present into our database:

        assertNumberOfRecipes(2);
        assertHasRecipe("Burton Ale");
        assertHasRecipe("Dry Stout");
        assertNumberOfHopsFor("Burton Ale", 3);
        assertNumberOfHopsFor("Dry Stout", 1);
        // TODO whould be more readable with DbUnit
    }

    @Test
    @DirtiesContext
    public void recipeWithoutHop() throws Exception {

        // Lauch our job:

        Map<String, JobParameter> parameters = new HashMap<String, JobParameter>();
        parameters.put("recipes", new JobParameter(getTestFile("recipe-without-hop.txt")));
        JobExecution jobExecution = jobLauncherTestUtils.launchJob(new JobParameters(parameters));

        // Batch should be completed:

        Assert.assertEquals(jobExecution.getExitStatus().getExitDescription(), BatchStatus.COMPLETED, jobExecution.getStatus());

        // Our data should be present into our database:

        assertNumberOfRecipes(2);
        assertHasRecipe("Burton Ale");
        assertHasRecipe("Dry Stout");
        assertNumberOfHopsFor("Burton Ale", 0);
        assertNumberOfHopsFor("Dry Stout", 1);
        // TODO whould be more readable with DbUnit
    }

    @Test
    @DirtiesContext
    public void emptyFile() throws Exception {

        // Lauch our job:

        Map<String, JobParameter> parameters = new HashMap<String, JobParameter>();
        parameters.put("recipes", new JobParameter(getTestFile("empty.txt")));
        JobExecution jobExecution = jobLauncherTestUtils.launchJob(new JobParameters(parameters));

        // Batch should be completed:

        Assert.assertEquals(jobExecution.getExitStatus().getExitDescription(), BatchStatus.COMPLETED, jobExecution.getStatus());

        // Our data should be present into our database:

        assertNumberOfRecipes(0);
    }

    private void assertHasRecipe(String recipe) {
        Assert.assertEquals(1, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Recipe where name=?", recipe));
    }

    private void assertNumberOfHopsFor(String recipeName, int num) {
        Assert.assertEquals(num, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Hop, Recipe where Recipe.name=? and recipeid=Recipe.id", recipeName));
    }

    private void assertNumberOfRecipes(int num) {
        Assert.assertEquals(num, simpleJdbcTemplate.queryForInt("SELECT COUNT(*) from Recipe"));
    }

    String getTestFile(String file) {
        return "classpath:/fr/sug/springbatch/example/masterdetail/" + file;
    }

}
