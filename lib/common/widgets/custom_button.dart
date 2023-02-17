import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/global_variable.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 15.0, left: 15, right: 15, top: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: GlobalVariables.darkGreenColor,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;
//   final Color? color;
//   const CustomButton({
//     Key? key,
//     required this.text,
//     required this.onTap,
//     this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: Text(
//         text,
//         style: TextStyle(
//           color: color == null ? Colors.white : Colors.,
//         ),
//       ),
//       onPressed: onTap,
//       style: ElevatedButton.styleFrom(
//         minimumSize: const Size(double.infinity, 50),
//         primary: color,
//       ),
//     );
//   }
// }
