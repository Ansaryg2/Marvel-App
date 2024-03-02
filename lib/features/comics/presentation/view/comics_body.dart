import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';
import 'package:marvel/features/comics/presentation/view/widgets/comics_gridview.dart';
import 'package:marvel/features/home/presentation/view/widgets/custom_appbar.dart';

class ComicsBody extends StatelessWidget {
  const ComicsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            'Comics',
            style: Styles.TextStyle32.copyWith(color: Colors.red),
          )),
          const SizedBox(
            height: 15,
          ),
          const ComicsGridView()
        ],
      ),
    );
  }
}
