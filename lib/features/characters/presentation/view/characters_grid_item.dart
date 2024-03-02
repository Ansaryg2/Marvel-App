import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';
import 'package:marvel/features/comics/presentation/view/comic_view.dart';
import 'package:page_transition/page_transition.dart';

class CharactersGridItem extends StatelessWidget {
  const CharactersGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        bottom: 15,
      ),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const ComicView(),
                      type: PageTransitionType.scale,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 300)));
            },
            child: Stack(
              children: [
                Image.asset(
                  'assets/Mobius_M._Mobius.png',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width * 1,
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [Colors.black, Colors.transparent])),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.165,
                    left: 6,
                    right: 1,
                    child: Text(
                      'Ant man',
                      softWrap: true,
                      maxLines: 1,
                      style: Styles.TextStyle18.copyWith(
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
