import 'package:evergreens/constants/global_variable.dart';
import 'package:evergreens/viewPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  String name = "Garden Plant";
  String price = "\$99.00";
  String image = "assets/images/plant1.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Choose the plant which suits our house",style: TextStyle(
                    fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding:
                const EdgeInsets.all(8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0),
                    child: TextFormField(
                        onChanged: (val){
                        },
                        decoration: InputDecoration(
                            prefixIcon:Icon(Icons.search),
                            labelText: 'Search',
                            labelStyle: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w400),
                            border: InputBorder.none,
                        ),

                    ),

                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Plants for You?",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,fontFamily: 'Prompt'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
      GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(6, (index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewPage(name:name,image:image,price:price)),
                );
              },
              child: SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width/2,
                child: Column(
                  children: [
                    Container(
                      height: 155,
                      width: MediaQuery.of(context).size.width/2.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:GlobalVariables.containerGreenColor
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          image,
                          height: 180,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                          Container(
                              decoration: BoxDecoration(
                                color: GlobalVariables.darkGreenColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(price,style: TextStyle(color: Colors.white),),
                              )
                          )
                        ],

                      ),
                    )
                  ],
                ),
              ),
            );
          },),
      ),




            ],
          ),
        ),
      ),
    );
  }
}
