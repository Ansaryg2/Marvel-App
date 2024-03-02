import 'package:flutter/material.dart';
import 'package:marvel/features/comics/presentation/view/widgets/filmview_column.dart';

class ComicView extends StatelessWidget {
  const ComicView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/spider-man-no-way-home-marketing-mcu.png',
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.36,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.33,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                ),
              )
            ],
          ),
          const FilmViewColumn(),
        ],
      ),
    )));
  }
}
