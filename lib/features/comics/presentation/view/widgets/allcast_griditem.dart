import 'package:flutter/material.dart';

class AllCastGridItem extends StatelessWidget {
  const AllCastGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              child: Image.asset(
                'assets/Bitmap.png',
                width: MediaQuery.of(context).size.width * 0.19,
                height: MediaQuery.of(context).size.height * 0.11,
                fit: BoxFit.fill,
              )),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tom Holland',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        overflow: TextOverflow.visible),
                  ),
                  Text(
                    'Peter Parker / SpiderMan',
                    style: TextStyle(
                        color: Colors.grey, overflow: TextOverflow.visible),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
