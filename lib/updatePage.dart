import 'dart:io';

import 'package:evergreens/common/widgets/custom_button.dart';
import 'package:evergreens/constants/global_variable.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'common/widgets/custom_textfield.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final ImagePicker _picker = ImagePicker();
  File? _image;
  String errorMessage = '';
  final _key = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  Future ImagePickerMethod() async{

    final pick =await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if(pick != null){
        _image = File(pick.path);
      }
      // else{
      //   showSnackBars("No File Selected", Duration(milliseconds: 400));
      // }
    });
  }
  String? validateName(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty){
      return "Name is required ";
    }
    return null;
  }
  String? validatePrice(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty){
      return "Price is required ";
    }
    return null;
  }
  String? validateQuantity(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty){
      return "Quantity is required ";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Update Plant"),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        foregroundColor: GlobalVariables.darkGreenColor,
      ),
      body: SafeArea(
        child: Form(
          key: _key,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Center(
                child: GestureDetector(
                  onTap: ImagePickerMethod,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CircleAvatar(
                      backgroundColor: GlobalVariables.darkGreenColor,
                      radius: 50,
                      child: _image==null?Icon(
                          Icons.camera_alt,size: 45,color: Colors.white,
                        ):Image.file(_image!),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text("Plant Name",style: TextStyle(

                        fontSize: 15,
                        color: Color(0xff2F3825)
                    ),),
                  ],
                ),
              ),
              // CustomTextField(controller: _nameController, hintText: 'plant name',validation: validateName),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text("Price",style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff2F3825)
                    ),),
                  ],
                ),
              ),
              // CustomTextField(controller: _priceController, hintText: 'price',validation: validatePrice),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Text("Quantity",style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff2F3825)
                    ),),
                  ],
                ),
              ),
              // CustomTextField(controller: _quantityController, hintText: 'quantity',validation: validateQuantity),
              CustomButton(text: "Update", onTap: (){
                if(_key.currentState!.validate()){
                  try {

                    errorMessage = '';
                  }  catch (error) {
                    errorMessage = error.toString();
                  }
                  setState(() {});
                }
              })
            ],
          ),
        ),
      )
    );
  }
}
