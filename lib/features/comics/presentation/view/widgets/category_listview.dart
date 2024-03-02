import 'package:flutter/material.dart';
import 'package:marvel/features/comics/presentation/view/widgets/category_listitem.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        padding: EdgeInsets.only(left: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryListItem();
        },
      ),
    );
  }
}
