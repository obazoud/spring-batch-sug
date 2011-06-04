package fr.sug.springbatch.example.masterdetail;

import fr.sug.springbatch.example.beans.Hop;
import fr.sug.springbatch.example.beans.Recipe;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.file.transform.FieldSet;

import java.util.ArrayList;

/**
 * Read one recipe from master-detail text file.
 */
public class MasterDetailReader implements ItemReader<Recipe> {

    /**
     * This reader will read the text file line-by-line instead of recipe-by-recipe.
     * Our class will drive it to build Recipe objects.
     */
    private ItemReader<FieldSet> delegate;

    @Override
    public Recipe read() throws Exception {
        Recipe recipe = null;
        FieldSet currentLine;
        while (true) {
            // Read one line from text file:
            currentLine = delegate.read();
            if (currentLine == null) {
                // End of text file, so we quit the loop
                break;
            } else {
                String prefix = currentLine.readString(0);
                if (prefix.startsWith("R")) {
                    // This is a "recipe" line starting with R so we read the Recipe data:
                    recipe = new Recipe();
                    recipe.setName(currentLine.readString(1));
                    recipe.setType(currentLine.readString(2));
                    recipe.setBrewer(currentLine.readString(3));
                    recipe.setHops(new ArrayList<Hop>());
                } else if (prefix.startsWith("H")) {
                    // This is a "hop" line starting with H so we read the Hop data:
                    Hop hop = new Hop();
                    hop.setName(currentLine.readString(1));
                    hop.setOrigin(currentLine.readString(2));
                    recipe.getHops().add(hop);
                } else if (prefix.startsWith("END")) {
                    // End of Recipe, so we qui the loop to return a recipe:
                    break;
                }
            }
        }
        return recipe;
    }

    public void setDelegate(ItemReader<FieldSet> delegate) {
        this.delegate = delegate;
    }
}
