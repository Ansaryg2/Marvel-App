import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Welcome Back Avenger ,',
            style: Styles.TextStyle14,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Mohamed Ansary',
            style: Styles.TextStyle32,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
