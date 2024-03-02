import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
                right: 12, left: 12, top: 1.5, bottom: 1.5),
            decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.3),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Text(
              'Adventure',
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
