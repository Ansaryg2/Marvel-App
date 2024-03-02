import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:marvel/features/characters/presentation/view/characters_body.dart';

import 'package:marvel/features/home/presentation/view/widgets/home_body.dart';

import '../../../comics/presentation/view/comics_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _index = 1;
  final screens = [
    const ComicsBody(),
    const HomeViewBody(),
    const CharactersBody()
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
          child: Scaffold(
        extendBody: true,
        body: screens[_index],
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.125,
              left: MediaQuery.of(context).size.width * 0.125),
          child: DotNavigationBar(
            paddingR: const EdgeInsets.only(top: 0),
            margin: EdgeInsets.zero,
            backgroundColor: Colors.white60,
            marginR: const EdgeInsets.all(4),
            currentIndex: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            items: [
              DotNavigationBarItem(
                  icon: const Icon(Icons.book),
                  selectedColor: Colors.red.shade400,
                  unselectedColor: Colors.black54),
              DotNavigationBarItem(
                  icon: const Icon(
                    Icons.home,
                  ),
                  selectedColor: Colors.red.shade400,
                  unselectedColor: Colors.black54),
              DotNavigationBarItem(
                  icon: const Icon(Icons.person),
                  selectedColor: Colors.red.shade400,
                  unselectedColor: Colors.black54),
            ],
          ),
        ),
      )),
    );
  }
}
