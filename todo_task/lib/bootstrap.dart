import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:todo_task/data/database/todo_dao.dart';
import 'app_bloc_observer.dart';
import 'package:todo_task/app/view/todo_app.dart';
import 'package:todo_task/data/repository/database_repository.dart';

// setting the bloc observer to keep track of events,
// and sending repository to TodoAppPage
Future<void> bootstrap({required TodoDao todoDao,}) async {
  final todoRepository = DatabaseRepository(dao: todoDao);
  FlutterError.onError =
      (details) => log(details.exceptionAsString(), stackTrace: details.stack);

  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(TodoApp(
          todoRepository: todoRepository,
        )),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
