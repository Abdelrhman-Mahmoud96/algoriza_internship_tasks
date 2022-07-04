import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task1/theme/colors.dart';

class CustomRedirectingText extends StatelessWidget {
  const CustomRedirectingText({
    Key? key,
    this.questionText,
    required this.pageNameText,
    required this.onTap}) : super(key: key);

  final String? questionText;
  final String pageNameText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questionText!,),
            InkWell(
            child: Text(pageNameText, style: const TextStyle(color: TasksColors.primaryColor),),
            onTap: onTap,
          ),
        ],)
    );
  }
}
