import 'package:evergreens/constants/global_variable.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
   ListPage({Key? key}) : super(key: key);
   Future _showMyDialog(BuildContext context) async {
     return showDialog<void>(
       context: context,
       barrierDismissible: false, // user must tap button!
       builder: (BuildContext context) {
         return AlertDialog(
           title: const Text('AlertDialog Title'),
           content: SingleChildScrollView(
             child: ListBody(
               children: const <Widget>[
                 Text('This is a demo alert dialog.'),
                 Text('Would you like to approve of this message?'),
               ],
             ),
           ),
           actions: <Widget>[
             TextButton(
               child: const Text('Approve'),
               onPressed: () {
                 Navigator.of(context).pop();
               },
             ),
           ],
         );
       },
     );
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount:10 ,
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade100,
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  border: Border.all()
                ),
                child: ListTile(
                  leading:CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      // borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/plant1.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  )  ,
                  title: Text("Garden Plant"),
                  subtitle: Text("\$99.00"),
                  trailing:GestureDetector(
                    onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Are you sure to ?'),
                      actions: <Widget>[
                        Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.green,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Center(child: const Text('Edit',style: TextStyle(fontFamily: 'Prompt',color: Colors.green,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.red,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Center(child: const Text('Remove',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Center(child: const Text('Cancel',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                        ),
                      ],
                    ),
                  ),
                    child: Icon(
                      Icons.more_vert_outlined,color: GlobalVariables.darkGreenColor,
                    ),
                  ),
                ),
              ),
            );

          }
      ),
    );
  }
}
