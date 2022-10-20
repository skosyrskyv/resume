extension IterableExtension<S> on Iterable<S> {
  Iterable<T> mapWithIndex<T>(T Function(S, int) callback) {
    int index = 0;
    return map<T>((S item) {
      return callback(item, index++);
    });
  }
}
