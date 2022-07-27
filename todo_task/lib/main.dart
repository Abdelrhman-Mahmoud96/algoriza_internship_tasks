import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:todo_task/core/converters/interfaces/i_database_provider.dart';
import 'package:todo_task/data/database/todo_dao.dart';
import 'package:todo_task/theme/colors.dart';
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
  AwesomeNotifications().initialize(
    'resource://drawable/todo_icon.png',
    [
      NotificationChannel(
          channelGroupKey: 'todos_channel_group_key',
          channelKey: 'todos_channel_key',
          channelName: 'todos notifications',
          channelDescription: 'notification channel for todo\'s reminder',
          defaultColor: TodoColors.todoPrimaryWhite,
          importance: NotificationImportance.High,
          ledColor: TodoColors.todoPurple),
    ],
  ); 
}
