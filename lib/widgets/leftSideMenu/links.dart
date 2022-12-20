import 'package:flutter/material.dart';
import 'package:neptune/constant.dart';
import 'package:neptune/models/Link.dart';

class Links extends StatefulWidget {
  const Links({super.key});

  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {
  String active = '/';

  void handleSetActive(url) {
    setState(() {
      active = url;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        links.length,
        (index) => GestureDetector(
          onTap: () {
            handleSetActive(links[index].url!);
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              width: double.infinity,
              decoration: active == links[index].url!
                  ? BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    )
                  : null,
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 1.5,
                vertical: defaultPadding * 0.6,
              ),
              margin: const EdgeInsets.only(
                bottom: defaultPadding / 2,
              ),
              child: Row(
                children: [
                  Image.asset(
                    links[index].icon!,
                    width: 23,
                  ),
                  const SizedBox(width: 18),
                  Text(
                    links[index].name!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
