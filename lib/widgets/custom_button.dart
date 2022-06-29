import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
          key: buttonKey,
          onPressed: onPressed,
          child: Text(label, style: const TextStyle(fontSize: 16, color: Colors.white),),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
            minimumSize: const Size(double.infinity, 48),
            primary: Colors.deepPurple
          ),
      ),
    );
  }
}
