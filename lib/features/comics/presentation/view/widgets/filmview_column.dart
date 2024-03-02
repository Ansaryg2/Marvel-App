import 'package:flutter/material.dart';
import 'package:marvel/features/comics/presentation/view/widgets/cast_section.dart';
import 'package:marvel/features/comics/presentation/view/widgets/category_listview.dart';
import 'package:marvel/features/comics/presentation/view/widgets/description_section.dart';
import 'package:marvel/features/comics/presentation/view/widgets/details_section.dart';
import 'package:marvel/features/comics/presentation/view/widgets/name_section.dart';

class FilmViewColumn extends StatelessWidget {
  const FilmViewColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NameSection(),
        SizedBox(height: 8),
        CategoryListView(),
        SizedBox(
          height: 10,
        ),
        DetailsSection(),
        DescriptionSection(),
        CastSection(),
      ],
    );
  }
}
