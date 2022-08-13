import 'package:flutter/material.dart';
import 'package:todo_task/core/converters/interfaces/i_database_provider.dart';
import 'package:todo_task/data/database/todo_dao.dart';
import 'package:todo_task/presentation/notifications/todo_notification_utils.dart';
import 'bootstrap.dart';
import 'package:todo_task/data/database/database_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initializing database and dao and sending to bootstrap
  final IDatabaseProvider _databaseProvider = DatabaseProvider.instance;
  final _todoDao = TodoDao(todoDatabaseProvider: _databaseProvider);

  await bootstrap(
    todoDao: _todoDao,
  );

  //initializing notification 
  initNotificationPlugin(); 
}
