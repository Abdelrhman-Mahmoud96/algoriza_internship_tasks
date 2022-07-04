import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task1/theme/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.buttonKey,
    required this.label,
    required this.onPressed,
}) : super(key: buttonKey);

  final Key buttonKey;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    // final hight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: ElevatedButton(
          key: buttonKey,
          onPressed: onPressed,
          child: Text(label, style: TextStyle(fontSize: 16.sp, color: Colors.white),),
          style: ElevatedButton.styleFrom(  
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
            minimumSize: Size(double.infinity, 48.h),
            primary: TasksColors.primaryColor
          ),
      ),
    );
  }
}
