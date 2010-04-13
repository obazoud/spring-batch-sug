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
        JobExecution jobExecution = jobLauncherTestUtils.launchJob(new JobParameters(parameters));
        Assert.assertEquals(jobExecution.getExitStatus().getExitDescription(), BatchStatus.COMPLETED, jobExecution.getStatus());
    }
    
}
