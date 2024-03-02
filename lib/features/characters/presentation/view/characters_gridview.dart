import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:marvel/features/characters/presentation/view/characters_grid_item.dart';

class CharacterGrid extends StatelessWidget {
  const CharacterGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: AnimationLimiter(
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredGrid(
                  delay: const Duration(milliseconds: 100),
                  position: index,
                  duration: const Duration(milliseconds: 800),
                  columnCount: 10,
                  child: const ScaleAnimation(
                      child: FadeInAnimation(child: CharactersGridItem())));
            },
          ),
        ),
      ),
    );
  }
}
