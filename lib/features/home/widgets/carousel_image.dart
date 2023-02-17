import 'package:carousel_slider/carousel_slider.dart';
import 'package:evergreens/constants/global_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariables.carouselImages.map((i) {
        return Builder(
          builder: (BuildContext context) => Image.network(
            i,
            fit: BoxFit.cover,
            height: 200,
          ),
        );
      }).toList(),
      options: CarouselOptions(viewportFraction: 1, height: 200),
    );
  }
}
