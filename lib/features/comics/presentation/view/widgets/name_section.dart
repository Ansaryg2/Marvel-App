import 'package:flutter/material.dart';
import 'package:marvel/core/utils/text_styles.dart';

class NameSection extends StatelessWidget {
  const NameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0, left: 25, right: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'SpiderMan Far From Home (2020)',
                  overflow: TextOverflow.visible,
                  style: Styles.TextStyle18.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              const Icon(Icons.bookmark_add_outlined)
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 16,
              ),
              Text(
                '9.1/10 IMDB',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
