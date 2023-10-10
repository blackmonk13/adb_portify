Stream<T> periodicFuture<T>(Duration interval, Future<T> Function() action) {
  return Stream.periodic(interval).asyncMap((_) => action());
}
