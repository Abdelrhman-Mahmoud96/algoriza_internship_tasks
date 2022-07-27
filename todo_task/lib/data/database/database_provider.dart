import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_task/core/converters/interfaces/i_database_provider.dart';
import 'package:todo_task/data/database/constants.dart';

class DatabaseProvider implements IDatabaseProvider {
  static final DatabaseProvider _databaseProvider =
      DatabaseProvider._internal();
  DatabaseProvider._internal();
  static DatabaseProvider get instance => _databaseProvider;

  Database? _todoDatabase;

  Future<Database> initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, kDatabaseName);
    return await openDatabase(path, version: kVirsion,
        onCreate: (Database database, int version) async {
      await database.execute(kCreationQuery);
    });
  }

  @override
  Future<Database> get databaseInstance async {
    _todoDatabase ??= await initDatabase();
    return _todoDatabase!;
  }
}
