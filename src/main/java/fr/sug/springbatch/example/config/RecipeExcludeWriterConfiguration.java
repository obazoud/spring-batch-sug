/**
 *
 */
package fr.sug.springbatch.example.config;

import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.file.FlatFileItemWriter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.FileSystemResource;

import fr.sug.springbatch.example.beans.Recipe;
import fr.sug.springbatch.example.writer.RecipeExcludeLineAggregator;

/**
 * @author bazoud
 * @version $Id$
 */
@Configuration
public class RecipeExcludeWriterConfiguration {

    @Bean
    public ItemWriter<Recipe> getRecipeExcludeWriter() throws Exception {
        FlatFileItemWriter<Recipe> writer = new FlatFileItemWriter<Recipe>();
        writer.setResource(new FileSystemResource("file:///tmp/sug/recipesexcludes.txt"));
        writer.setLineAggregator(new RecipeExcludeLineAggregator());
        writer.afterPropertiesSet();
        return writer;
    }
}
