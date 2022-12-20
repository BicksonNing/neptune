import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Transfer',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
