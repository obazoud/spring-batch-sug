package fr.sug.springbatch.example.processor;

import fr.sug.springbatch.example.beans.Recipe;
import org.junit.Test;

import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;

public class RecipeProcessorTest {

    RecipeProcessor processor = new RecipeProcessor();

    @Test
    public void shouldProcessRecipe() throws Exception {
        // Given
        Recipe input = new Recipe();
        input.setName("Not Wit");

        // When
        Recipe output = processor.process(input);

        // Then
        assertSame(input, output);
    }

    @Test
    public void shouldFilterRecipe() throws Exception {
        // Given
        Recipe input = new Recipe();
        input.setName("Wit");

        // When
        Recipe output = processor.process(input);

        // Then
        assertNull(output);
    }
}
