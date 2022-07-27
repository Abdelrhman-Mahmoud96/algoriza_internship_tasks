import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:internship_task1/data/bording_data.dart';
import 'package:internship_task1/theme/colors.dart';
import 'package:internship_task1/widgets/custom_button.dart';
import 'package:internship_task1/widgets/custom_redirecting_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BordingPageState();
}

class _BordingPageState extends State<BoardingPage> {
  final String welcomeText = 'Welcome to the First Task';
  final double fontSize = 32;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(          
              child: PageView.builder(
                itemCount: bordingData.length,
                itemBuilder: (context, index) {
                  return bordingData[index];
                },
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            // dots indecator
            Padding(
              padding: EdgeInsets.all(8.r),
              child: DotsIndicator(
                dotsCount: bordingData.length,
                position: currentIndex.toDouble(),
                decorator: DotsDecorator(
                  size: Size(20.w, 6.h),
                  activeSize: Size(20.w, 6.h),
                  color: TasksColors.primaryColor.withOpacity(0.5),
                  activeColor: TasksColors.primaryColor,
                  shape: const RoundedRectangleBorder(),
                  activeShape: const RoundedRectangleBorder(),
                ),
              ),
            ),
           SizedBox(height: 100.h,),
            // sign in button
            CustomButton(
              buttonKey: const Key('boarding_page_sign_in_key'),
              label: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, '/signInPage');
              },
            ),
            //not having account(sign up)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomRedirectingText(
                  questionText: 'You do not having an Account? ',
                  pageNameText: 'Sign Up',
                  onTap: () {
                    Navigator.pushNamed(context, '/signUpPage');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
