import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questionText!,),
            InkWell(
            child: Text(pageNameText, style: const TextStyle(color: Colors.deepPurple),),
            onTap: onTap,
          ),
        ],)
    );
  }
}
