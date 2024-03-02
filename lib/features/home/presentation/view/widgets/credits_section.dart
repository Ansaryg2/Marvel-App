import 'package:flutter/material.dart';

class CreditsSection extends StatelessWidget {
  const CreditsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Data provided by Marvel. © 2023 MARVEL',
      style: TextStyle(fontSize: 8),
    ));
  }
}
