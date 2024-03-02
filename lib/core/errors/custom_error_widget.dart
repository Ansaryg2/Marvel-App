import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.TextStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
