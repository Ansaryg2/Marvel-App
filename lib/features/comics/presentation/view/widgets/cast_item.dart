import 'package:flutter/material.dart';

class CastItem extends StatelessWidget {
  const CastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.5),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              child: Image.asset(
                'assets/Bitmap.png',
                width: MediaQuery.of(context).size.width * 0.19,
                height: MediaQuery.of(context).size.height * 0.11,
                fit: BoxFit.fill,
              )),
          const Text(
            'Tom Holland',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
          )
        ],
      ),
    );
  }
}
