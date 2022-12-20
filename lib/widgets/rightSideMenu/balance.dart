import 'package:flutter/material.dart';
import 'package:neptune/constant.dart';
import 'package:neptune/widgets/widgets.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Balance',
              style: TextStyle(fontSize: 25),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove_red_eye,
                size: 15,
                color: bodyTextColor,
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        const BalanceCard(
          title: 'E-Wallet',
          icon: 'assets/images/wallet.png',
          balance: '20 U',
        ),
        const SizedBox(height: 15),
        const BalanceCard(
          title: 'E-Pocket',
          icon: 'assets/images/pocket.png',
          balance: '120 U',
        ),
      ],
    );
  }
}
