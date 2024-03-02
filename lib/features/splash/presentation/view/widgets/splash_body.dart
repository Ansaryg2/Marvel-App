import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:marvel/features/home/presentation/view/home_view.dart';
import 'package:page_transition/page_transition.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).push(PageTransition(
            child: const HomeView(),
            type: PageTransitionType.scale,
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 500)));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/6604719.jpg',
                ),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Animate(
              effects: const [
                FadeEffect(duration: Duration(seconds: 1)),
                ScaleEffect(duration: Duration(seconds: 1))
              ],
              child: Image.asset(
                'assets/Marvel Black Print.png',
                height: MediaQuery.of(context).size.height * 0.35,
              ),
            ),
          ],
        ));
  }

  void navigateToHome() {}
}
