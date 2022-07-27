import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:todo_task/core/converters/date_converter.dart';
import 'package:todo_task/core/converters/time_converter.dart';
import 'package:todo_task/core/route/route_generator.dart';
import 'package:todo_task/domain/entity/todo.dart';
import 'package:todo_task/theme/colors.dart';



void notificationPermissionRequest({required BuildContext context}) {
  AwesomeNotifications().isNotificationAllowed().then((isAllowed) async {
    if (!isAllowed) {
      await showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            // backgroundColor: NoteColors.visualDarkBlue,
            title: const Text(
              'Notification Permission',
              style: TextStyle(color: TodoColors.todoPurple),
            ),
            content: const Text(
              'you need to grant it to send notifications to your app',
              style: TextStyle(color: TodoColors.todoPurple),
            ),
            actions: [
              TextButton(
                child: const Text(
                  'ok',
                  style: TextStyle(
                    color: TodoColors.todoPurple,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  AwesomeNotifications().requestPermissionToSendNotifications();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  });
}

void setNotificationListner(BuildContext context) {
  AwesomeNotifications()
      .actionStream
      .listen((ReceivedNotification receivedNotification) {
    Navigator.of(context).pushNamed(RouteGenerator.schedulePage);
  });
}

void createReminderNotification(Todo todo) {
  final todoScheduledTime = scheduleTime(todo);
  if (DateTime.now().isBefore(todoScheduledTime)) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: todo.id.hashCode,
        channelKey: 'todos_channel_key',
        title: 'Hello There!',
        body: 'don\'t forget to ${todo.title}, ${todo.reminder} remain',
        icon: 'resource://drawable/todo_icon',
        notificationLayout: NotificationLayout.Default,
        payload: {'todoId': todo.id},
      ),
      schedule: NotificationCalendar.fromDate(date: todoScheduledTime),
    );
  }
}

DateTime scheduleTime(Todo todo) {
  final dateconverter = DatabaseDateTimeConverter();
  final timeConverter = DatabaseTimeOfDayConverter();

  final todoDateOnly = dateconverter.decode(data: todo.date!);
  final todoStartTime = timeConverter.decode(data: todo.startTime!);

  final currentTodoDate = DateTime(todoDateOnly.year, todoDateOnly.month,
      todoDateOnly.day, todoStartTime.hour, todoStartTime.minute);

  if (todo.reminder == '5 seconds Before(test)') {
    return currentTodoDate.subtract(const Duration(seconds: 5));
  } else if (todo.reminder == '1 Day Before') {
    return currentTodoDate.subtract(const Duration(days: 1));
  } else if (todo.reminder == '1 Hour Before') {
    return currentTodoDate.subtract(const Duration(hours: 1));
  } else if (todo.reminder == '30 Minutes Before') {
    return currentTodoDate.subtract(const Duration(minutes: 30));
  } else {
    return currentTodoDate.subtract(const Duration(minutes: 10));
  }
}
