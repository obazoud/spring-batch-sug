package fr.sug.springbatch.example.xstream;

import org.apache.commons.lang.StringUtils;

import com.thoughtworks.xstream.converters.Converter;
import com.thoughtworks.xstream.converters.MarshallingContext;
import com.thoughtworks.xstream.converters.UnmarshallingContext;
import com.thoughtworks.xstream.io.HierarchicalStreamReader;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;

import fr.sug.springbatch.example.beans.Recipe;

public class RecipeConverter implements Converter {

    @Override
    @SuppressWarnings("unchecked")
    public boolean canConvert(Class type) {
        return type.equals(Recipe.class);
    }

    @Override
    public Object unmarshal(HierarchicalStreamReader reader, UnmarshallingContext context) {
        Recipe recipe = new Recipe();
        recipe.setName(read(reader, context, "NAME"));
        recipe.setVersion(read(reader, context, "VERSION"));
        recipe.setType(read(reader, context, "TYPE"));
        recipe.setBrewer(read(reader, context, "BREWER"));
        recipe.setAsstBrewer(read(reader, context, "ASST_BREWER"));
        recipe.setBatchSize(read(reader, context, "BATCH_SIZE"));
        recipe.setBoilSize(read(reader, context, "BOIL_SIZE"));
        recipe.setBoilTime(read(reader, context, "BOIL_TIME"));
        recipe.setEfficiency(read(reader, context, "EFFICIENCY"));
        return recipe;
    }

    @Override
    public void marshal(Object source, HierarchicalStreamWriter writer, MarshallingContext context) {
    }

    static String read(HierarchicalStreamReader reader, UnmarshallingContext context, String name) {
        return StringUtils.trimToNull(reader.underlyingReader().getAttribute(name));
    }

}
