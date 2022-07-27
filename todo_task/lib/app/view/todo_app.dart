import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/core/route/route_generator.dart';
import 'package:todo_task/domain/repository/i_repository.dart';
import 'package:todo_task/presentation/notifications/todo_notification_utils.dart';
import 'package:todo_task/presentation/pages/board_page/view/board_page.dart';
import 'package:todo_task/theme/todo_theme.dart';

// work as the root of the app setting routes and providing,
// repository to the whole app
class TodoAppPage extends StatelessWidget {
  const TodoAppPage({
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
                initialRoute: RouteGenerator.homePage,
                //home: const BoardPage(),
              );
            }));
  }
}

// creating a notifications listener and managing notification permission, 
// because of the notifications action listener, i had to separate it from the TodoAppPage,
// which is responsible of navigating the user to schedule screen, and to achieve that,
// i need the correct context which it should come from a Matrial App widget,
// in order to separate the concerns of each class, i created this class;
class TodoAppView extends StatefulWidget {
  const TodoAppView({Key? key}) : super(key: key);

  @override
  State<TodoAppView> createState() => _TodoAppViewState();
}

class _TodoAppViewState extends State<TodoAppView> {
  @override
  void initState() {
    // check notification permission and create a dialoge
    // to get user permission if not granted already
    notificationPermissionRequest(context: context);
    // listen to user tab on the notifications
    setNotificationListner(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const BoardPage();
  }
}
