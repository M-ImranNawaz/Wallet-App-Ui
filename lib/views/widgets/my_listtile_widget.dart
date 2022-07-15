import 'package:flutter/material.dart';

class MyListTileWidget extends StatelessWidget {
  const MyListTileWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key);
  final String image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 80,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(image),
            ),
            SizedBox(width: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(subTitle, style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
            
          ],
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
