


  public class SkipCheckingListener extends StepExecutionListenerSupport {
    public ExitStatus afterStep(StepExecution stepExecution) {
      String exitCode = stepExecution.getExitStatus().getExitCode();
      if (!exitCode.equals(ExitStatus.FAILED.getExitCode()) && stepExecution.getSkipCount() > 0) {
        return new ExitStatus("COMPLETED WITH SKIPS");
      } else {
        return stepExecution.getExitStatus();
      }
    }
  }


  public class SkipCheckingDecider implements JobExecutionDecider {
    public FlowExecutionStatus decide(JobExecution jobExecution, StepExecution stepExecution) {
      if(!ExitStatus.FAILED.equals(stepExecution.getExitStatus()) && stepExecution.getSkipCount() > 0) {
        return new FlowExecutionStatus("COMPLETED WITH SKIPS");
      } else {
        return new FlowExecutionStatus(jobExecution.getExitStatus().toString());
      }
    }
  }


  public class MyItemWriter implements ItemWriter<Object> {
    private StepExecution stepExecution;
    public void write(List<Object> items) throws Exception {
      // (...)
      ExecutionContext stepContext = this.stepExecution.getExecutionContext();
      stepContext.put("myKey", value);
    }
    
    @BeforeStep
    public void saveStepExecution(StepExecution stepExecution) {
      this.stepExecution = stepExecution;
    }
  }

  
  








