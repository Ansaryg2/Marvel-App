import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';
import 'package:marvel/features/characters/presentation/view/characters_gridview.dart';
import 'package:marvel/features/home/presentation/view/widgets/custom_appbar.dart';

class CharactersBody extends StatelessWidget {
  const CharactersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            'Characters',
            style: Styles.TextStyle32.copyWith(color: Colors.red),
          )),
          const SizedBox(
            height: 15,
          ),
          const CharacterGrid()
        ],
      ),
    );
  }
}
