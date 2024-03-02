import 'package:flutter/material.dart';
import 'package:marvel/features/comics/presentation/view/widgets/allcast_gridview.dart';

class AllCastSection extends StatelessWidget {
  const AllCastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/spider-man-no-way-home-marketing-mcu.png',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.height * 1,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.height * 1,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [Colors.white, Colors.transparent])),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.12),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
                              width: MediaQuery.of(context).size.width * 0.25,
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            'SpiderMan Far From Home (2020)',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, top: 10),
                  child: Row(
                    children: [
                      Text('Cast',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                      Text('  (20)', style: TextStyle(fontSize: 14))
                    ],
                  ),
                ),
                const AllCastGridView()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
