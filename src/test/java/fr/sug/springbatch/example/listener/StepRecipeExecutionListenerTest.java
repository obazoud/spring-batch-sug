package fr.sug.springbatch.example.listener;

import fr.sug.springbatch.example.beans.Recipe;
import org.junit.Before;
import org.junit.Test;
import org.springframework.batch.item.file.FlatFileItemWriter;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import static org.mockito.Mockito.*;

/**
 * Unit tests of our step execution listener.
 */
@SuppressWarnings("unchecked")
public class StepRecipeExecutionListenerTest {

    private StepRecipeExecutionListener listener;
    private FlatFileItemWriter<Recipe> mockWriter;
    private Recipe item;
    private Recipe result;

    @Before
    public void initTest() {
        listener = new StepRecipeExecutionListener();
        mockWriter = mock(FlatFileItemWriter.class);
        listener.setRecipeExcludeWriter(mockWriter);

        item = new Recipe();
        item.setName("Wit");
    }

    @Test
    public void shouldWriteExcludedRecipeWhenResultIsNull() throws Exception {

        result = null;

        listener.afterProcess(item, result);

        List<Recipe> rejectedItems = Arrays.asList(item);
        verify(mockWriter).write(rejectedItems);
    }

    @Test
    public void shouldNotWriteWhenResultIsNotNull() throws Exception {
        result = new Recipe();

        listener.afterProcess(item, result);

        verify(mockWriter, never()).write(anyList());
    }

    @Test public void shouldNotPropagateException() throws Exception {
        result = null;
        doThrow(new IOException("BOOM")).when(mockWriter).write(anyList());

        listener.afterProcess(item,result);
    }
}
