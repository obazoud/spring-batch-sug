/**
 *
 */
package fr.sug.springbatch.example.config;

import org.springframework.batch.core.Step;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.tasklet.TaskletStep;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;

import fr.sug.springbatch.example.tasklet.InitialTasklet;

/**
 * @author bazoud
 * @version $Id$
 */
@Configuration
public class InitialStepConfiguration {
    @Autowired
    private InitialTasklet initialTasklet;
    @Autowired
    private JobRepository jobRepository;
    @Autowired
    private PlatformTransactionManager transactionManager;
    /**
     *
     */
    public InitialStepConfiguration() {
    }

    @Bean
    public Step getInitialStep() {
        TaskletStep step = new TaskletStep();
        step.setTransactionManager(transactionManager);
        step.setJobRepository(jobRepository);
        step.setTasklet(initialTasklet);
        return step;
    }

}
