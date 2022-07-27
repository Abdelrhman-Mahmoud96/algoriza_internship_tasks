import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBordingInfo extends StatelessWidget {
  const CustomBordingInfo(
      {Key? key,
      required this.image,
      required this.mainText,
      required this.subText})
      : super(key: key);

  final String image;
  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 360.w,
          height: 240.h,
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/$image'),
        ),
        Padding(
          padding: EdgeInsets.all(8.r),
          child: Text(
            mainText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.r),
          child: Text(
            mainText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5), fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}
