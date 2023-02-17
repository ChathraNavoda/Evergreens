import 'package:evergreens/constants/global_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Stars extends StatelessWidget {
  final double rating;
  const Stars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      direction: Axis.horizontal,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Color.fromARGB(255, 207, 170, 23),
      ),
      itemCount: 5,
      rating: rating,
      itemSize: 15,
    );
  }
}
