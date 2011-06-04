

  /**
   * Policy for determining whether or not some processing should be skipped.
   */
  public interface SkipPolicy {
    /**
     * Returns true or false, indicating whether or not processing should
     * continue with the given throwable.
     */
    boolean shouldSkip(Throwable t, int skipCount) throws SkipLimitExceededException;
  }


  
  public interface SkipListener<T,S> extends StepListener {
      void onSkipInRead(Throwable t);
      void onSkipInWrite(S item, Throwable t);
      void onSkipInProcess(T item, Throwable t);
  }


  
  public interface JobExecutionListener {
      /**
       * Callback before a job executes.
       */
      void beforeJob(JobExecution jobExecution);
      /**
       * Callback after completion of a job. Called after both both successful and
       * failed executions. To perform logic on a particular status, use
       * "if (jobExecution.getStatus() == BatchStatus.X)".
       */
      void afterJob(JobExecution jobExecution);
  }
  
  
  public interface ItemStream {
      /**
       * Open the stream for the provided {@link ExecutionContext}.
       */
      void open(ExecutionContext executionContext) throws ItemStreamException;
      /**
       * Indicates that the execution context provided during open is about to be saved. If any state is remaining, but
       * has not been put in the context, it should be added here.
       */
      void update(ExecutionContext executionContext) throws ItemStreamException;
      /**
       * If any resources are needed for the stream to operate they need to be destroyed here. Once this method has been
       * called all other methods (except open) may throw an exception.
       */
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
  
  
  
  