import 'package:flutter/material.dart';

class CharactersItem extends StatelessWidget {
  const CharactersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: AspectRatio(
            aspectRatio: 1 / 1.45,
            child: Image.asset(
              'assets/Mobius_M._Mobius.png',
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
