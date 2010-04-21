/**
 *
 */
package fr.sug.springbatch.example.writer;

import org.springframework.batch.item.file.transform.LineAggregator;

import fr.sug.springbatch.example.beans.Recipe;

/**
 * @author bazoud
 */
public class RecipeExcludeLineAggregator implements LineAggregator<Recipe> {

    @Override
    public String aggregate(Recipe item) {
        StringBuilder builder = new StringBuilder();
        String name = item.getName();
        if (name != null) {
            builder.append(name);
        }
        return builder.toString();
    }
}
