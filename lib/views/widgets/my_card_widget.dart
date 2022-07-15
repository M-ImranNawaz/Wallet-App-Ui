import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/balance.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    Key? key,
    required this.color,
    required this.b,
  }) : super(key: key);

  final Color color;
  final Balance b;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Balance',
            style: kWhiteTStyle,
          ),
          Text(
            '\$ ${b.balance}',
            style: kCTStyle.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                b.cNumber,
                style: kWhiteTStyle,
              ),
              Text(
                b.eDate,
                style: kWhiteTStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
