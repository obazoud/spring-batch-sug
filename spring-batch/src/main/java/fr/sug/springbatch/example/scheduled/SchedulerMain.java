package fr.sug.springbatch.example.scheduled;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Launch the job with a Spring Scheduler.
 * Launch with -Drecipes=URLOfBeerXmlFile
 */
public class SchedulerMain {
    public static void main(String args[]) {
        new ClassPathXmlApplicationContext(
                "/fr/sug/springbatch/example/scheduling-context.xml");
        // Spring Scheduler will start as soon as the Application Context is loaded.
    }
}
