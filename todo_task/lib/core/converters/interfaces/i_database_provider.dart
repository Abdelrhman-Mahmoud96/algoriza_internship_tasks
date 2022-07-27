abstract class IDatabaseProvider<AnyDatabase> {
  Future<AnyDatabase> get databaseInstance;
}
