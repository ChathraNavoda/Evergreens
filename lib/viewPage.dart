import 'package:flutter/material.dart';

import 'constants/global_variable.dart';

class ViewPage extends StatefulWidget {
  final name;
  final image;
  final price;
  const ViewPage({Key? key, required String this.name, required String this.image, required String this.price}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalVariables.containerGreenColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25),bottomRight:Radius.circular(25)),
                  color:GlobalVariables.containerGreenColor
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  widget.image,
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.name,style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),),
                  Container(
                      decoration: BoxDecoration(
                        color: GlobalVariables.darkGreenColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.price,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 3.0,right: 16.0),
              child: Row(
                children:const  [
                  Expanded(
                    child: Text("It is a long established fact that a reader will be distra by t"
                        "he readable  will be distracted by thunge is state controller established fact life",style: TextStyle(
                        fontWeight: FontWeight.normal,color: Colors.black45,fontSize: 15
                    ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
