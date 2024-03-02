import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 28, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/Menu.png'),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Image.asset('assets/Marvel Logo.png', width: 70),
          ),
          const Icon(
            (Icons.search),
          )
        ],
      ),
    );
  }
}
