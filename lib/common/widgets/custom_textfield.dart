// import 'package:evergreens/constants/global_variable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';

// class CustomTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final int maxLines;
//   final String? Function(String? x)? validation;
//   const CustomTextField(
//       {super.key,
//       required this.controller,
//       required this.hintText,
//       required this.validation,
//       this.maxLines = 1});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 60,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: Colors.black54)),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, top: 0),
//           child: TextFormField(
//               validator: validation,
//               obscureText: false,
//               controller: controller,
//               decoration: InputDecoration(
//                 hintText: hintText,
//                 labelStyle: TextStyle(color: Colors.grey),
//                 border: InputBorder.none,
//               )),
//         ),
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';

// // class CustomTextField extends StatelessWidget {
// //   final TextEditingController controller;
// //   final String hintText;
// //   final int maxLines;
// //   const CustomTextField({
// //     Key? key,
// //     required this.controller,
// //     required this.hintText,
// //     this.maxLines = 1,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return TextFormField(
// //       controller: controller,
// //       decoration: InputDecoration(
// //           hintText: hintText,
// //           border: const OutlineInputBorder(
// //               borderSide: BorderSide(
// //             color: Colors.black38,
// //           )),
// //           enabledBorder: const OutlineInputBorder(
// //               borderSide: BorderSide(
// //             color: Colors.black38,
// //           ))),
// //       validator: (val) {
// //         if (val == null || val.isEmpty) {
// //           return 'Enter your $hintText';
// //         }
// //         return null;
// //       },
// //       maxLines: maxLines,
// //     );
// //   }
// // }

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black38,
          )),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black38,
          ))),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText';
        }
        return null;
      },
      maxLines: maxLines,
    );
  }
}
