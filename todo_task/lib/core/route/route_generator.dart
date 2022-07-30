import 'package:flutter/material.dart';
import 'package:todo_task/presentation/pages/add_todo_page/view/add_todo_page.dart';
import 'package:todo_task/presentation/pages/board_page/view/board_page.dart';
import 'package:todo_task/presentation/pages/schedule_page/view/schedule_page.dart';

class RouteGenerator {
  RouteGenerator._();

  static const boardPage = '/';
  static const notificationPage = '/save_note';
  static const addTodoPage = '/add_todo';
  static const schedulePage = '/schedule_page';

  static Route<void> generateRoute(RouteSettings settings) {
    switch (settings.name) {     
      case boardPage:
        return MaterialPageRoute<void>(
          builder: (_) => const BoardPage(),
        );

      // case notificationPage:
      //   return MaterialPageRoute<void>(
      //     builder: (_) => const TodoNotificationsPage(),
      //   );

      case addTodoPage:
        return MaterialPageRoute<void>(
          builder: (_) => const AddTodoPage(),
        );

      case schedulePage:
        return MaterialPageRoute<void>(
          builder: (_) => SchedulePage(),
        );

      default:
        throw const FormatException('Route Not Found');
    }
  }
}
