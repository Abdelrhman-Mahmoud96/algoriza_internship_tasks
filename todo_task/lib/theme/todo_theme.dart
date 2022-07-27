import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/theme/colors.dart';

class TodoTheme {
  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: TodoColors.todoPrimaryWhite,
      appBarTheme: AppBarTheme( 
        systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: TodoColors.todoPrimaryWhite,
              statusBarIconBrightness: Brightness.dark),       
          color: TodoColors.todoPrimaryWhite,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 26.sp, color: TodoColors.todoPurple),
          // shape: Border(bottom: BorderSide(color: Colors.grey[350]!, width: 2.w)),
          iconTheme: const IconThemeData(color: TodoColors.todoPurple),
          ),
          
      colorScheme: ColorScheme.fromSwatch(
        accentColor: TodoColors.todoPurple,
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: TodoColors.todoPrimaryWhite,
        contentTextStyle: TextStyle(color: TodoColors.todoDarkBlue),
        behavior: SnackBarBehavior.floating,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: TodoColors.todoPurple,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all<Color>(TodoColors.todoPurple),        
        ),
      unselectedWidgetColor: TodoColors.todoPrimaryWhite,
      toggleableActiveColor: TodoColors.todoPrimaryWhite,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      scaffoldBackgroundColor: TodoColors.todoPrimaryDark,
      appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: TodoColors.todoPrimaryDark,
              statusBarIconBrightness: Brightness.light),
          color: TodoColors.todoPurple,
          iconTheme: const IconThemeData(color: TodoColors.todoPrimaryWhite),
          shape: Border(bottom: BorderSide(color: Colors.grey[350]!, width: 2.w)),
          titleTextStyle: TextStyle(fontSize: 26.sp)
          ),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: TodoColors.todoBlue,
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: TodoColors.todoPrimaryDark,
        contentTextStyle: TextStyle(color: TodoColors.todoPrimaryWhite),
        behavior: SnackBarBehavior.floating,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: TodoColors.todoPurple,
      ),
    );
  }
}
