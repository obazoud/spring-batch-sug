/**
 *
 */
package fr.sug.springbatch.example.processor;

import org.springframework.batch.item.ItemProcessor;

import fr.sug.springbatch.example.beans.Recipe;

/**
 * @author bazoud
 *
 */
public class RecipeProcessor implements ItemProcessor<Recipe, Recipe> {

    @Override
    public Recipe process(Recipe item) throws Exception {
        if ("Wit".equals(item.getName())) {
            return null;
        }
        return item;
    }
}
