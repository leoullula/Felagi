import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmerwid extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  const Shimmerwid.rectangular({
    this.width = double.infinity,
    required this.height,
  }) : this.shapeBorder = const RoundedRectangleBorder();

  const Shimmerwid.circular(
      {this.width = double.infinity,
      required this.height,
      this.shapeBorder = const CircleBorder()});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
      child: Container(
        width: width,
        height: height,
        decoration:
            ShapeDecoration(shape: shapeBorder, color: Colors.grey[400]!),
      ),
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[200]!);
}
