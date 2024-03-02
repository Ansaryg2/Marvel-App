import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';
import 'package:marvel/features/comics/presentation/view/widgets/allcast_section.dart';
import 'package:marvel/features/comics/presentation/view/widgets/cast_item.dart';
import 'package:page_transition/page_transition.dart';

class CastSection extends StatelessWidget {
  const CastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cast',
                  style: Styles.TextStyle18,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const AllCastSection(),
                            type: PageTransitionType.scale,
                            alignment: Alignment.center,
                            duration: const Duration(milliseconds: 300)));
                  },
                  child: Text(
                    'See more',
                    style: Styles.TextStyle14,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const CastItem();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
