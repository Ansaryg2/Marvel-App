import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';
import 'package:marvel/features/home/presentation/view/widgets/newmovies_scrollview.dart';

class NewComicsSection extends StatelessWidget {
  const NewComicsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'New Comics',
            style: Styles.TextStyle18,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        NewMoviesScrollView(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
