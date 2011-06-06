

  public interface SkipPolicy {
    boolean shouldSkip(Throwable t, int skipCount) throws SkipLimitExceededException;
  }

  
  public interface SkipListener<T,S> extends StepListener {
      void onSkipInRead(Throwable t);
      void onSkipInWrite(S item, Throwable t);
      void onSkipInProcess(T item, Throwable t);
  }


  
  public interface JobExecutionListener {
      void beforeJob(JobExecution jobExecution);
      void afterJob(JobExecution jobExecution);
  }
  
  
  public interface ItemStream {
      void open(ExecutionContext executionContext) throws ItemStreamException;
      void update(ExecutionContext executionContext) throws ItemStreamException;
      void close() throws ItemStreamException;
  }
  
  
  
  public class CustomItemReader<T> implements ItemReader<T>, ItemStream {
    List<T> items;
    int currentIndex = 0;
    private static final String CURRENT_INDEX = "current.index";

    public CustomItemReader(List<T> items) {
      this.items = items;
    }
    public T read() throws Exception, UnexpectedInputException, ParseException {
      if (currentIndex < items.size()) {
        return items.get(currentIndex++);
      }
      return null;
    }
    public void open(ExecutionContext executionContext) throws ItemStreamException {
      currentIndex = executionContext.getInt(CURRENT_INDEX, 0);
    }
    public void update(ExecutionContext executionContext) throws ItemStreamException {
      executionContext.putInt(CURRENT_INDEX, currentIndex);
    }
    public void close() throws ItemStreamException {
    }
  }
  
  
  
  