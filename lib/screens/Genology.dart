import 'package:flutter/material.dart';

class Genology extends StatelessWidget {
  const Genology({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Genology',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
