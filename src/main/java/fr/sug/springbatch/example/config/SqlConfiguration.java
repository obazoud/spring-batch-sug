/**
 *
 */
package fr.sug.springbatch.example.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

/**
 * @author bazoud
 * @version $Id$
 */
@Configuration
public class SqlConfiguration {
    @Autowired
    private DataSource dataSource;

    @Bean
    public SimpleJdbcTemplate getSimpleJdbcTemplate() {
        return new SimpleJdbcTemplate(dataSource);
    }
}
