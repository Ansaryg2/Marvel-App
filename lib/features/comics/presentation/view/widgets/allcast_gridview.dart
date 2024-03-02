import 'package:flutter/material.dart';
import 'package:marvel/features/comics/presentation/view/widgets/allcast_griditem.dart';

class AllCastGridView extends StatelessWidget {
  const AllCastGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        padding: const EdgeInsets.only(left: 28, bottom: 20, top: 5),
        itemBuilder: (context, index) {
          return const AllCastGridItem();
        },
      ),
    );
  }
}
