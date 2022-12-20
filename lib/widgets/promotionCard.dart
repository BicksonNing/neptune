import 'package:flutter/material.dart';
import 'package:neptune/constant.dart';
import 'package:neptune/widgets/widgets.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard(
      {super.key,
      required this.flex,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.title});

  final int flex;
  final String title;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: bgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            PromotionText(text: text1),
            PromotionText(text: text2),
            PromotionText(text: text3),
          ],
        ),
      ),
    );
  }
}
