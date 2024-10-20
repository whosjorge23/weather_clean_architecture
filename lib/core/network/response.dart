///The provided code defines a sealed class ResponseWrapper<T> in Dart, which is
///used to encapsulate the result of an operation that can either succeed or fail. This
///class has two subclasses: Success<T> and Error<T>, representing successful and
///failed outcomes, respectively.
///
///The ResponseWrapper<T> class includes a method when<K>, which takes two
///functions as parameters: isSuccess and isError. These functions are called based
///on whether the instance is a Success or an Error. The when method uses a switch
///statement to determine the type of the current instance and then calls the
///appropriate function with the corresponding data or error message.
sealed class ResponseWrapper<T> {
  K when<K>(K Function(T data) isSuccess,
      K Function(String error) isError,) {
    return switch (this) {
      Success(data: T data) => isSuccess(data),
      Error(error: String error) => isError(error),
    };
  }
}

///The Success<T> class extends ResponseWrapper<T> and contains a single field,
///data, which holds the successful result of the operation.

class Success<T> extends ResponseWrapper<T> {
  final T data;

  Success(this.data);
}

///Similarly, the Error<T> class extends ResponseWrapper<T> and contains a single
///field, error, which holds the error message if the operation fails.

class Error<T> extends ResponseWrapper<T> {
  final String error;

  Error(this.error);
}

///The execute<T> function is an asynchronous function that takes another function
///operation as a parameter, which returns a Future<T>. It also optionally takes an
///onError function to handle errors. The execute function tries to execute the
///operation and returns a Success instance if the operation completes successfully.
///If an error occurs, it returns an Error instance with the error message. If the
///onError function is provided, it is called with the error, and its result is returned
///instead.

Future<ResponseWrapper<T>> execute<T>(Future<T> Function() operation, {
  ResponseWrapper<T> Function(dynamic e)? onError,
}) async {
  try {
    final response = await operation();
    return Success(response);
  } catch (e) {
    return onError?.call(e) ?? Error(e.toString());
  }
}
