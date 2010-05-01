package fr.sug.springbatch.example.config;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecutionListener;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.SimpleJob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import fr.sug.springbatch.example.listener.JobListener;

/**
 *
 * @author bazoud
 * @version $Id$
 */
@Configuration
public class JobExempleConfiguration {
    @Autowired
    private JobListener jobListener;
    @Autowired
    private Step initialStep;
    @Autowired
    private Step recipeStep;

    @Bean
    public Job getJobExemple() throws Exception {
        SimpleJob job = new SimpleJob();
        job.addStep(initialStep);
        job.addStep(recipeStep);
        job.setJobExecutionListeners(new JobExecutionListener[] { jobListener });
        return job;
    }

}
