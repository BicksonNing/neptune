import 'package:flutter/material.dart';
import 'package:neptune/constant.dart';
import 'package:neptune/responsive.dart';

class Alert extends StatelessWidget {
  const Alert(
      {super.key,
      required this.icon,
      required this.title,
      required this.btnText});

  final String icon;
  final String title;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: defaultPadding * 1.5,
      ),
      padding: EdgeInsets.symmetric(
        horizontal:
            Responsive.isMobile(context) ? defaultPadding : defaultPadding * 2,
        vertical: defaultPadding / 1.5,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: alertColor,
      ),
      child: Row(children: [
        Image.asset(
          icon,
          width: 25,
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(btnText),
        )
      ]),
    );
  }
}
