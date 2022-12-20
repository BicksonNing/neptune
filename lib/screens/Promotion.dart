import 'package:flutter/material.dart';
import 'package:neptune/responsive.dart';
import 'package:neptune/widgets/widgets.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Promotions',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 15),
        if (Responsive.isMobile(context) || Responsive.isMobileLarge(context))
          Column(
            children: [
              Row(
                children: const [
                  PromotionCard(
                    flex: 2,
                    title: 'Normal Period',
                    text1: '1 Unit = \$ 0.8',
                    text2: '100 Unit = \$ 12.5',
                    text3: '1000 Unit = \$ 125',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  PromotionCard(
                    flex: 4,
                    title: 'Offer Period (25th Jan 2023 - 25th May 2023)',
                    text1: '1 Unit = \$ 0.8',
                    text2: '110 Unit = \$ 12.5',
                    text3: '1100 Unit = \$ 125',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  PromotionCard(
                    flex: 2,
                    title: 'Account transferred Normal',
                    text1: '100 Unit = \$ 0.12',
                    text2: '1000 Unit = \$ 12',
                    text3: '10,000 Unit = \$ 1250',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  PromotionCard(
                    flex: 2,
                    title: 'Cash Payment Offer',
                    text1: '105 Unit = \$ 0.12',
                    text2: '1050 Unit = \$ 12',
                    text3: '10,500 Unit = \$ 1250',
                  ),
                ],
              ),
            ],
          ),
        if (Responsive.isTablet(context) ||
            Responsive.isDesktop(context) ||
            Responsive.isExtraLarge(context))
          Column(
            children: [
              Row(
                children: const [
                  PromotionCard(
                    flex: 2,
                    title: 'Normal Period',
                    text1: '1 Unit = \$ 0.8',
                    text2: '100 Unit = \$ 12.5',
                    text3: '1000 Unit = \$ 125',
                  ),
                  SizedBox(width: 20),
                  PromotionCard(
                    flex: 4,
                    title: 'Offer Period (25th Jan 2023 - 25th May 2023)',
                    text1: '1 Unit = \$ 0.8',
                    text2: '110 Unit = \$ 12.5',
                    text3: '1100 Unit = \$ 125',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  PromotionCard(
                    flex: 2,
                    title: 'Account transferred Normal',
                    text1: '100 Unit = \$ 0.12',
                    text2: '1000 Unit = \$ 12',
                    text3: '10,000 Unit = \$ 1250',
                  ),
                  SizedBox(width: 20),
                  PromotionCard(
                    flex: 2,
                    title: 'Cash Payment Offer',
                    text1: '105 Unit = \$ 0.12',
                    text2: '1050 Unit = \$ 12',
                    text3: '10,500 Unit = \$ 1250',
                  ),
                ],
              ),
            ],
          )
      ],
    );
  }
}
