import 'package:felagi/Enhance_Ui_Screens/shimmer.dart';
import 'package:flutter/material.dart';

class Shim extends StatelessWidget {
  const Shim({Key? key}) : super(key: key);
  Widget buildFoodShimer() => ListTile(
        leading: Shimmerwid.circular(
          width: 64,
          height: 64,
          shapeBorder:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        title: Shimmerwid.rectangular(height: 16),
        subtitle: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Shimmerwid.rectangular(height: 14),
            SizedBox(
              height: 10,
            ),
            Shimmerwid.rectangular(height: 14),
            SizedBox(
              height: 10,
            ),
            Shimmerwid.rectangular(height: 14),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return buildFoodShimer();
        });
  }
}
