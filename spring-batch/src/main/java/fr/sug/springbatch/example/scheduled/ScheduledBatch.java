package fr.sug.springbatch.example.scheduled;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobExecutionException;
import org.springframework.batch.core.JobParameter;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.launch.JobLauncher;

import java.util.HashMap;
import java.util.Map;

/**
 * Called by Spring Scheduler to launch a Spring Batch Job.
 */
public class ScheduledBatch {

    private JobLauncher springBatchLauncher;

    private Job jobExemple;

    private String recipesFile;

    public void launch() throws JobExecutionException {
        Map<String, JobParameter> params = new HashMap<String, JobParameter>();
        params.put("recipes", new JobParameter(recipesFile));
        springBatchLauncher.run(jobExemple, new JobParameters(params));

    }

    public void setRecipesFile(String recipesFile) {
        this.recipesFile = recipesFile;
    }

    public void setSpringBatchLauncher(JobLauncher springBatchLauncher) {
        this.springBatchLauncher = springBatchLauncher;
    }

    public void setJobExemple(Job jobExemple) {
        this.jobExemple = jobExemple;
    }
}
