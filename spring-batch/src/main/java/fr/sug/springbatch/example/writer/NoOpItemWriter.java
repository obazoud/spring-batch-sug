package fr.sug.springbatch.example.writer;

import java.util.List;

import org.springframework.batch.item.ItemWriter;
import org.springframework.stereotype.Component;

import fr.sug.springbatch.example.beans.Recipe;

/**
 *
 *
 * @author bazoud
 * @version $Id$
 */
@Component
public class NoOpItemWriter implements ItemWriter<Recipe> {

    @Override
    public void write(List<? extends Recipe> items) throws Exception {
    }
}
