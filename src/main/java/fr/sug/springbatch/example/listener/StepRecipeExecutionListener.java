/**
 *
 */
package fr.sug.springbatch.example.listener;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.batch.core.listener.ItemListenerSupport;
import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import fr.sug.springbatch.example.beans.Recipe;

/**
 * @author bazoud
 *
 */
@Component
public class StepRecipeExecutionListener extends ItemListenerSupport<Recipe, Recipe> {
    // logger
    private static final Logger LOG = Logger.getLogger(StepRecipeExecutionListener.class);
    @Autowired
    private ItemWriter<Recipe> recipeExcludeWriter;

    @Override
    public void afterProcess(Recipe item, Recipe result) {
        if (result == null) {
            LOG.info("Filtering " + item.getName());
            try {
                List<Recipe> excludes = new ArrayList<Recipe>();
                excludes.add(item);
                recipeExcludeWriter.write(excludes);
            } catch (Exception e) {
                LOG.error("Can not write exludes file", e);
            }
        }
    }

    public void setRecipeExcludeWriter(ItemWriter<Recipe> recipeExcludeWriter) {
        this.recipeExcludeWriter = recipeExcludeWriter;
    }
}
