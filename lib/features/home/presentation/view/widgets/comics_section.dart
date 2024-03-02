import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';
import 'package:marvel/features/home/presentation/view/widgets/comics_listview.dart';

class ComicsSection extends StatelessWidget {
  const ComicsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Comics',
                style: Styles.TextStyle18,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'See more',
                  style: Styles.TextStyle14,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const ComicsListView(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
