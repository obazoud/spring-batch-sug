package fr.sug.springbatch.example.config;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecutionListener;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.SimpleJob;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
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
    private JobRepository jobRepository;
   @Autowired
    private JobListener jobListener;
    @Autowired
    @Qualifier("initialStep")
    private Step initialStep;
    @Autowired
    @Qualifier("recipeStep") 
    private Step recipeStep;

    @Bean
    public Job getJobExemple() throws Exception {
        SimpleJob job = new SimpleJob();
        job.setJobRepository(jobRepository);        
        job.addStep(initialStep);
        job.addStep(recipeStep);
        job.setJobExecutionListeners(new JobExecutionListener[] { jobListener });
        return job;
    }

}
