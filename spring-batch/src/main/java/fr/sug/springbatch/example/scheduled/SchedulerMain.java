package fr.sug.springbatch.example.scheduled;

import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Launch the job with a Quartz Scheduler.
 */
public class SchedulerMain {
    public static void main(String args[]) {
        new ClassPathXmlApplicationContext("/fr/sug/springbatch/example/scheduling-context.xml");
        // Le scheduler va démarrer tout seul : inutile de faire plus.
    }
}
