import 'package:flutter/material.dart';
import 'package:neptune/constant.dart';
import 'package:neptune/widgets/rightSideMenu/balance.dart';
import 'package:simple_shadow/simple_shadow.dart';

class RightSideMenu extends StatelessWidget {
  const RightSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
        width: 300,
        decoration: const BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            defaultPadding * 2,
            defaultPadding * 2.5,
            defaultPadding * 2,
            defaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile here
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/user.jpg'),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '4561254',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        size: 15,
                        color: bodyTextColor,
                      ))
                ],
              ),

              const SizedBox(height: 50),

              // Balance here
              const Balance(),
              const Spacer(),
              // Sign out here
              GestureDetector(
                onTap: () {},
                child: SimpleShadow(
                  opacity: 0.1, // Default: 0.5
                  color: Colors.black, // Default: Black
                  offset: const Offset(3, 3), // Default: Offset(2, 2)
                  sigma: 3,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding * 0.5,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/sign-out.png',
                          width: 23,
                        ),
                        const SizedBox(width: 18),
                        const Text(
                          'Sign out',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
