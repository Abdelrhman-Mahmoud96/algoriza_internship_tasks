import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/core/route/route_generator.dart';
import 'package:todo_task/domain/repository/i_repository.dart';
import 'package:todo_task/theme/todo_theme.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({
    Key? key,
    required this.todoRepository,
  }) : super(key: key);

  final IRepository todoRepository;
  
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
        value: todoRepository,
        child: ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            builder: (context, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'todo_task',
                theme: TodoTheme.light,
                darkTheme: TodoTheme.dark,
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', 'US'),
                ],
                onGenerateRoute: RouteGenerator.generateRoute,
                initialRoute: RouteGenerator.boardPage,
              );
            }));
  }
}
