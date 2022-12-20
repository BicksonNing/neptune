import 'package:flutter/material.dart';
import 'package:neptune/constant.dart';
import 'package:neptune/widgets/widgets.dart';

class LeftSideMenu extends StatelessWidget {
  const LeftSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Drawer(
      width: 250,
      elevation: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            defaultPadding,
            defaultPadding * 2.5,
            defaultPadding,
            defaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo here
              Padding(
                padding: const EdgeInsets.only(
                  left: defaultPadding * 1.5,
                  right: defaultPadding * 1.5,
                  bottom: defaultPadding * 1.5,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              // Links here
              const Links(),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2,
                ),
                child: Text('© 2022-23 Neptune'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
