import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';
import 'package:marvel/features/home/presentation/view/widgets/character_listview.dart';

class CharactersSection extends StatelessWidget {
  const CharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Characters',
                style: Styles.TextStyle18,
              ),
              Text(
                'See more',
                style: Styles.TextStyle14,
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        CharacterListView(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
