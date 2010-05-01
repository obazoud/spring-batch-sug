/**
 *
 */
package fr.sug.springbatch.example.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.batch.core.Step;
import org.springframework.batch.core.StepListener;
import org.springframework.batch.core.step.item.SimpleStepFactoryBean;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.ItemStream;
import org.springframework.batch.item.support.CompositeItemProcessor;
import org.springframework.batch.item.xml.StaxEventItemReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;

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
import fr.sug.springbatch.example.listener.StepRecipeExecutionListener;
import fr.sug.springbatch.example.processor.IdProcessor;
import fr.sug.springbatch.example.processor.RecipeProcessor;
import fr.sug.springbatch.example.writer.RecipeItemWriter;
import fr.sug.springbatch.example.xstream.XStreamMarshallerFactoryBean;

/**
 * @author bazoud
 * @version $Id$
 */
@Configuration
// @ImportResource(value = { "classpath:fr/sug/springbatch/example/implementations-context.xml" })
public class RecipeStepConfiguration {
    @Autowired
    private StepRecipeExecutionListener stepRecipeExecutionListener;
    @Autowired
    private ItemStream recipeExcludeWriter;
    @Autowired
    private RecipeItemWriter recipesWriter;

    @Value("${job.commit.interval}")
    private int commitInterval;
    @Value("#{jobParameters[recipes]}")
    private Resource resource;

    @Bean
    public Step getRecipeStep() throws Exception {
        SimpleStepFactoryBean<Recipe, Recipe> step = new SimpleStepFactoryBean<Recipe, Recipe>();
        step.setItemReader(getRecipesReader());
        step.setItemProcessor(getRecipesProcessor());
        step.setItemWriter(recipesWriter);
        step.setCommitInterval(commitInterval);
        step.setStreams(new ItemStream[] { recipeExcludeWriter });
        step.setListeners(new StepListener[] { stepRecipeExecutionListener });
        return (Step) step.getObject();
    }

    @SuppressWarnings("unchecked")
    private ItemProcessor<Recipe, Recipe> getRecipesProcessor() throws Exception {
        CompositeItemProcessor composite = new CompositeItemProcessor();
        List<ItemProcessor> delegates = new ArrayList<ItemProcessor>();
        delegates.add(new IdProcessor());
        delegates.add(new RecipeProcessor());
        composite.setDelegates(delegates);
        composite.afterPropertiesSet();
        return null;
    }

    private ItemReader<Recipe> getRecipesReader() throws Exception {
        StaxEventItemReader<Recipe> reader = new StaxEventItemReader<Recipe>();
        reader.setResource(resource);
        reader.setFragmentRootElementName("RECIPE");
        XStreamMarshallerFactoryBean marshaller = new XStreamMarshallerFactoryBean();
        List<Class<?>> classes = new ArrayList<Class<?>>();
        classes.add(Equipment.class);
        classes.add(Fermentable.class);
        classes.add(Hop.class);
        classes.add(Mash.class);
        classes.add(MashStep.class);
        classes.add(Misc.class);
        classes.add(Recipe.class);
        classes.add(Style.class);
        classes.add(Water.class);
        classes.add(Yeast.class);
        marshaller.setClasses(classes);
        marshaller.afterPropertiesSet();
        reader.setUnmarshaller(marshaller.getObject());
        reader.afterPropertiesSet();
        return reader;
    }

}
