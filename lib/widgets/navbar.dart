import 'package:flutter/material.dart';
import 'package:neptune/responsive.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Menu Button
        if (!Responsive.isDesktop(context))
          Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Icon(Icons.menu),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        // Logo here
        Image.asset(
          'assets/images/logo.png',
          width: 150,
        ),
        const Spacer(),
        // Unit here
        const Text(
          "1 U = Rs. 10.0001/-",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
