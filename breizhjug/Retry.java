

  public interface RetryListener {
    <T> boolean open(RetryContext context, RetryCallback<T> callback);
    <T> void close(RetryContext context, RetryCallback<T> callback, Throwable throwable);
    <T> void onError(RetryContext context, RetryCallback<T> callback, Throwable throwable);
  }

  
  