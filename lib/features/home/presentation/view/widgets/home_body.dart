import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:marvel/features/home/presentation/view/widgets/characters_section.dart';
import 'package:marvel/features/home/presentation/view/widgets/comics_section.dart';
import 'package:marvel/features/home/presentation/view/widgets/credits_section.dart';
import 'package:marvel/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:marvel/features/home/presentation/view/widgets/login_section.dart';
import 'package:marvel/features/home/presentation/view/widgets/newcomics_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 1),
          child: AnimationLimiter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 1000),
                childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CustomAppBar(),
                  const LoginSection(),
                  const NewComicsSection(),
                  const CharactersSection(),
                  const ComicsSection(),
                  const CreditsSection(),
                ],
              ),
            ),
          )),
    );
  }
}
