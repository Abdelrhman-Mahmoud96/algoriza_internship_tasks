import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_task/theme/colors.dart';

class NoTodosView extends StatelessWidget {
  const NoTodosView({Key? key, required this.caption}) : super(key: key);

  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100.h,
        ),       
        Center(
            child: Image.asset(
          'assets/empty3.png',
          width: 250.w,
          height: 250.h,
        )),
        SizedBox(
          height: 10.h,
        ),
         Text(
          caption,        
          style: TextStyle(color: TodoColors.todoPurple, fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  
}