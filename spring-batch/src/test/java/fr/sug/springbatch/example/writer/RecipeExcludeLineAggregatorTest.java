package fr.sug.springbatch.example.writer;

import fr.sug.springbatch.example.beans.Recipe;
import org.junit.Before;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

/**
 * Line aggregator unit tests.
 */
public class RecipeExcludeLineAggregatorTest {

    private RecipeExcludeLineAggregator aggregator;

    @Before
    public void initTest() {
        aggregator = new RecipeExcludeLineAggregator();
    }

    @Test
    public void lineShouldBeTheRecipeName() {
        Recipe item = new Recipe();
        item.setName("toto");
        item.setAbv("one abv");
        String theLine = aggregator.aggregate(item);
        assertThat(theLine, equalTo("toto"));
    }

    @Test
    public void nullNameShouldGiveEmptyLine() {
        Recipe item = new Recipe();
        item.setName(null);
        String theLine = aggregator.aggregate(item);
        assertThat(theLine, equalTo(""));
    }
}
