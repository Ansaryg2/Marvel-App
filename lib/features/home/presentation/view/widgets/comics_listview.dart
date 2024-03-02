import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:marvel/features/home/presentation/view/widgets/comics_item.dart';

class ComicsListView extends StatelessWidget {
  const ComicsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.only(right: 5),
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 1500),
              child: const SlideAnimation(
                  horizontalOffset: 50,
                  child: FadeInAnimation(child: ComicsItem())),
            );
          },
        ),
      ),
    );
  }
}
