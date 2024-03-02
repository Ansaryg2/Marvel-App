import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 25.0, left: 25, top: 10),
          child: Text(
            'Description',
            style: Styles.TextStyle18,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Text(
            '''With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.''',
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}
