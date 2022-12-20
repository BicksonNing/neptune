import 'package:flutter/material.dart';
import 'package:neptune/responsive.dart';
import 'package:neptune/widgets/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Projects',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 15),

        // Mobile Screen
        if (Responsive.isMobile(context) || Responsive.isMobileLarge(context))
          Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    flex: 7,
                    child: ProjectCard(
                      image: "assets/images/project2.jpg",
                      name: 'Project 1',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(
                    flex: 3,
                    child: ProjectCard(
                      image: "assets/images/project3.jpg",
                      name: 'Project 2',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(
                    flex: 2,
                    child: ProjectCard(
                      image: "assets/images/project4.jpg",
                      name: 'Project 3',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(
                    flex: 3,
                    child: ProjectCard(
                      image: "assets/images/project2.jpg",
                      name: 'Project 4',
                    ),
                  ),
                ],
              ),
            ],
          ),
       
      //  Large Screen
        if (Responsive.isTablet(context) ||
            Responsive.isDesktop(context) ||
            Responsive.isExtraLarge(context))
          Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    flex: 7,
                    child: ProjectCard(
                      image: "assets/images/project2.jpg",
                      name: 'Project 1',
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 3,
                    child: ProjectCard(
                      image: "assets/images/project3.jpg",
                      name: 'Project 2',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(
                    flex: 2,
                    child: ProjectCard(
                      image: "assets/images/project4.jpg",
                      name: 'Project 3',
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 3,
                    child: ProjectCard(
                      image: "assets/images/project2.jpg",
                      name: 'Project 4',
                    ),
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }
}
