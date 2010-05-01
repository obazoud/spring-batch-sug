package fr.sug.springbatch.example.config;

import javax.sql.DataSource;

import org.springframework.batch.test.DataSourceInitializer;
import org.springframework.batch.test.JobLauncherTestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

/**
 *
 * @author bazoud
 * @version $Id$
 */
@Configuration
public class ApplicationTestConfiguration {
    @Autowired
    private DataSource dataSource;

    @Bean
    public JobLauncherTestUtils jobLauncherTestUtils() {
        return new JobLauncherTestUtils();
    }

    @Bean
    public DataSourceInitializer getDataSourceInitializer() {
        DataSourceInitializer dataSourceInitializer = new DataSourceInitializer();
        dataSourceInitializer.setDataSource(dataSource);
        dataSourceInitializer.setDestroyScripts(new Resource[] { //
                new ClassPathResource("org/springframework/batch/core/schema-drop-h2.sql") });
        dataSourceInitializer.setInitScripts(new Resource[] { //
                new ClassPathResource("org/springframework/batch/core/schema-h2.sql"), //
                new ClassPathResource("fr/sug/springbatch/example/schema-recipe.sql") });
        return dataSourceInitializer;
    }

}
