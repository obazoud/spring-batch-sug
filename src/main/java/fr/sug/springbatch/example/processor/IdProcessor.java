/**
 *
 */
package fr.sug.springbatch.example.processor;

import java.util.UUID;

import org.springframework.batch.item.ItemProcessor;

import fr.sug.springbatch.example.beans.Equipment;
import fr.sug.springbatch.example.beans.Fermentable;
import fr.sug.springbatch.example.beans.Hop;
import fr.sug.springbatch.example.beans.Mash;
import fr.sug.springbatch.example.beans.MashStep;
import fr.sug.springbatch.example.beans.Misc;
import fr.sug.springbatch.example.beans.Recipe;
import fr.sug.springbatch.example.beans.Style;
import fr.sug.springbatch.example.beans.Water;
import fr.sug.springbatch.example.beans.Yeast;

/**
 * @author bazoud
 *
 */
public class IdProcessor implements ItemProcessor<Recipe, Recipe> {

    @Override
    public Recipe process(Recipe item) throws Exception {
        item.setId(getUUID());
        // Hop
        for (Hop hop : item.getHops()) {
            hop.setId(getUUID());
            hop.setRecipeId(item.getId());
        }
        // Fermentable
        for (Fermentable fermentable : item.getFermentables()) {
            fermentable.setId(getUUID());
            fermentable.setRecipeId(item.getId());
        }
        // Misc
        for (Misc misc : item.getMiscs()) {
            misc.setId(getUUID());
            misc.setRecipeId(item.getId());
        }
        // Yeast
        for (Yeast yeast : item.getYeasts()) {
            yeast.setId(getUUID());
            yeast.setRecipeId(item.getId());
        }
        // Style
        Style style = item.getStyle();
        style.setId(item.getId());
        // Equipment
        Equipment equipment = item.getEquipment();
        equipment.setId(item.getId());
        // Mash
        Mash mash = item.getMash();
        mash.setId(item.getId());
        // MashStep
        for (MashStep mashStep : mash.getMashSteps()) {
            mashStep.setId(getUUID());
            mashStep.setMashId(mash.getId());
        }
        // Water
        for (Water water: item.getWaters()) {
            water.setId(getUUID());
            water.setRecipeId(item.getId());
        }
        return item;
    }

    private String getUUID() {
        return UUID.randomUUID().toString();
    }

}
