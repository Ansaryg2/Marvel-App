import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          part(title: 'Length', description: '2h 26min'),
          part(title: 'Language', description: 'English'),
          part(title: 'Rating', description: 'PG-13')
        ],
      ),
    );
  }

  Column part({required String title, required var description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.start,
          title,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        Text(
          description,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 13),
        )
      ],
    );
  }
}
