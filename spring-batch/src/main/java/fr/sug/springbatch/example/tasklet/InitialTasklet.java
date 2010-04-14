/**
 *
 */
package fr.sug.springbatch.example.tasklet;

import java.util.Date;

import org.apache.commons.lang.time.FastDateFormat;
import org.apache.log4j.Logger;
import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.stereotype.Component;

/**
 * Simple initial tasklet.
 *
 * @author bazoud
 *
 */
@Component(value = "initialTasklet")
public class InitialTasklet implements Tasklet {
    // logger
    private static final Logger LOG = Logger.getLogger(InitialTasklet.class);
    private static final FastDateFormat DATE_FORMAT = FastDateFormat.getInstance("yyyy/MM/dd HH:mm:ss");

    @Override
    public RepeatStatus execute(StepContribution contribution, ChunkContext chunkContext) throws Exception {
        LOG.info("Initializing at " + DATE_FORMAT.format(new Date()) + ".");
        return null;
    }
}
