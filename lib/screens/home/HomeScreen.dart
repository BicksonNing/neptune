import 'package:flutter/material.dart';
import 'package:neptune/constant.dart';
import 'package:neptune/responsive.dart';
import 'package:neptune/screens/screens.dart';
import 'package:neptune/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const LeftSideMenu(),
      body: Center(
        child: Container(
          // constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context) ||
                  Responsive.isExtraLarge(context))
                const LeftSideMenu(),
              const SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SizedBox(
                  height: size.height,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: defaultPadding * 2.5,
                        left: defaultPadding,
                        right: defaultPadding,
                        bottom: defaultPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Navbar(),
                          Alert(
                            icon: 'assets/images/alert.png',
                            title: 'Account not verified',
                            btnText: 'Verify',
                          ),
                          // Dashboard(),
                          // Promotion(),
                          // Phase(),
                          // Genology(),
                          // Transfer(),
                          Profile(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding),
              if (Responsive.isExtraLarge(context)) const RightSideMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
