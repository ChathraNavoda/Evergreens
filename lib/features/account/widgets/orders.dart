import 'package:evergreens/constants/global_variable.dart';
import 'package:evergreens/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  //temparay list
  List list = [
    //'image':
    'https://empire-s3-production.bobvila.com/slides/30451/original/Gloxinia-flowering-houseplants.jpg?1551987245',
    'https://i.etsystatic.com/27743352/r/il/6c386e/3544477904/il_fullxfull.3544477904_8d64.jpg',
    'https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fit,w_730,h_484/at%2Fhome-projects%2F2020-10%2Fshutterstock_706823737_spring_garden',
    'https://www.gardendesign.com/pictures/images/900x705Max/site_3/oso-easy-rose-rose-of-the-year-proven-winners_14753.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                "Your Orders",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                "See All",
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        //display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
