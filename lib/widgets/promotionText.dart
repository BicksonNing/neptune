import 'package:flutter/material.dart';

class PromotionText extends StatelessWidget {
  const PromotionText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 15,
        ));
  }
}
