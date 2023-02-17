import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the Day',
            style: TextStyle(fontSize: 15),
          ),
        ),
        Image.network(
          'https://m.media-amazon.com/images/I/61pECIQEVqL._AC_SX522_.jpg',
          height: 232,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          alignment: Alignment.topLeft,
          child: const Text('\$100'),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Vanilla planifolia',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://www.hayleysqualityseed.com/wp-content/uploads/2021/11/DONS3347-scaled.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/buy-plants-online-geranium-flowers-1617144239.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://ugmainweb.s3.ap-south-1.amazonaws.com/wp-content/uploads/2022/01/11080835/Edible-Cauliflower-Top-Website-webp.webp',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://nebula.wsimg.com/d6f8655f0b9ce0ffb612602fa70b6163?AccessKeyId=A6ED25EEDBEFC3AEB9E0&disposition=0&alloworigin=1',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://t4.ftcdn.net/jpg/05/57/77/85/360_F_557778548_Jdu7YEzBiO8yA3gglwiK3bRZrOnCcD80.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.norfolkherbs.co.uk/wp-content/uploads/2016/04/cul-collections.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            'See all deals',
            style: TextStyle(color: Color.fromARGB(255, 20, 208, 77)),
          ),
        )
      ],
    );
  }
}
