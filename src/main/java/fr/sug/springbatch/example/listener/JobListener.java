/**
 *
 */
package fr.sug.springbatch.example.listener;

import org.apache.log4j.Logger;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobExecutionListener;
import org.springframework.stereotype.Component;

/**
 * A simple log4j listener implementataion.
 *
 * @author bazoud
 * @version $Id$
 */
@Component(value = "jobListener")
public class JobListener implements JobExecutionListener {
    // logger
    private static final Logger LOG = Logger.getLogger(JobListener.class);

    /**
     *
     */
    public JobListener() {
        super();
    }

    @Override
    public void afterJob(JobExecution jobExecution) {
        if (LOG.isInfoEnabled()) {
            LOG.info("afterJob STATUS + " + jobExecution.getStatus());
            LOG.info("afterJob : " + jobExecution);
        }
    }

    @Override
    public void beforeJob(JobExecution jobExecution) {
        if (LOG.isInfoEnabled()) {
            LOG.info("beforeJob : STARTING");
            LOG.info("beforeJob JobParameters : " + jobExecution.getJobInstance().getJobParameters());
        }
    }

}
