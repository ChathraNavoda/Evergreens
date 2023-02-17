// import 'package:evergreens/common/widgets/custom_button.dart';
// import 'package:evergreens/common/widgets/custom_textfield.dart';
// import 'package:evergreens/constants/global_variable.dart';
// import 'package:evergreens/features/auth/services/auth_service.dart';
// import 'package:flutter/material.dart';

// enum Auth {
//   signin,
//   signup,
// }

// class AuthScreen extends StatefulWidget {
//   static const String routeName = '/auth-screen';
//   const AuthScreen({Key? key}) : super(key: key);

//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   Auth _auth = Auth.signup;
//   final _signUpFormKey = GlobalKey<FormState>();
//   final _signInFormKey = GlobalKey<FormState>();
//   final AuthService authService = AuthService();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _nameController = TextEditingController();
//   String errorMessage = '';

//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _nameController.dispose();
//   }

//   void signUpUser() {
//     authService.signUpUser(
//         context: context,
//         email: _emailController.text,
//         password: _passwordController.text,
//         name: _nameController.text);
//   }

//   String? validateEmail(String? formEmail) {
//     if (formEmail == null || formEmail.isEmpty)
//       return "Email address is required ";
//     String pattern = r'\w+@\w+\.\w+';
//     RegExp regex = RegExp(pattern);
//     if (!regex.hasMatch(formEmail)) return 'Invalid E-mail Address format.';
//     return null;
//   }

//   String? validateName(String? formEmail) {
//     if (formEmail == null || formEmail.isEmpty) {
//       return "Name is required ";
//     }
//     return null;
//   }

//   String? validatePassword(String? formPassword) {
//     if (formPassword == null || formPassword.isEmpty)
//       return 'Password is required';
//     String pattern =
//         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
//     RegExp regex = RegExp(pattern);
//     if (!regex.hasMatch(formPassword)) {
//       return "Password must be at least 8 characters, include an uppercase letter, number and symbol.";
//     }
//     return null;
//   }

//   void signInUser() {
//     authService.signInUser(
//       context: context,
//       email: _emailController.text,
//       password: _passwordController.text,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: GlobalVariables.greenBackgroundCOlor,
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Center(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(100),
//                     child: Image.asset(
//                       'assets/images/logo.png',
//                       height: 180,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Center(
//                   child: Text(
//                     'Evergreens',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromARGB(255, 55, 145, 27),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     children: [
//                       const SizedBox(height: 20),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 60,
//                           width: width,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(15),
//                               border: Border.all(
//                                   color: GlobalVariables.darkGreenColor)),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     _auth = Auth.signin;
//                                   });
//                                 },
//                                 child: Container(
//                                   height: 40,
//                                   width: width / 2.5,
//                                   decoration: BoxDecoration(
//                                       color: _auth == Auth.signin
//                                           ? GlobalVariables.darkGreenColor
//                                           : Colors.white,
//                                       borderRadius: BorderRadius.circular(15),
//                                       border: Border.all(
//                                           color: _auth == Auth.signin
//                                               ? Colors.white
//                                               : GlobalVariables
//                                                   .darkGreenColor)),
//                                   child: Center(
//                                     child: Text(
//                                       "Sign-in",
//                                       style: TextStyle(
//                                           color: _auth == Auth.signin
//                                               ? Colors.white
//                                               : GlobalVariables.darkGreenColor,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 18),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 15,
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     _auth = Auth.signup;
//                                   });
//                                 },
//                                 child: Container(
//                                   height: 40,
//                                   width: width / 2.5,
//                                   decoration: BoxDecoration(
//                                       color: _auth == Auth.signup
//                                           ? GlobalVariables.darkGreenColor
//                                           : Colors.white,
//                                       borderRadius: BorderRadius.circular(15),
//                                       border: Border.all(
//                                           color: _auth == Auth.signup
//                                               ? Colors.white
//                                               : GlobalVariables
//                                                   .darkGreenColor)),
//                                   child: Center(
//                                     child: Text(
//                                       "Sign-up",
//                                       style: TextStyle(
//                                           color: _auth == Auth.signup
//                                               ? Colors.white
//                                               : GlobalVariables.darkGreenColor,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 18),
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       if (_auth == Auth.signup)
//                         Form(
//                           key: _signUpFormKey,
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 15.0),
//                                 child: Row(
//                                   children: const [
//                                     Text(
//                                       "Name",
//                                       style: TextStyle(
//                                           fontSize: 15,
//                                           color: Color(0xff2F3825)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               CustomTextField(
//                                   controller: _nameController,
//                                   hintText: 'your name',
//                                   validation: validateName),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 15.0),
//                                 child: Row(
//                                   children: const [
//                                     Text(
//                                       "Email",
//                                       style: TextStyle(
//                                           fontSize: 15,
//                                           color: Color(0xff2F3825)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               CustomTextField(
//                                   controller: _emailController,
//                                   hintText: 'example@email.com',
//                                   validation: validateEmail),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 15.0),
//                                 child: Row(
//                                   children: const [
//                                     Text(
//                                       "Password",
//                                       style: TextStyle(
//                                           fontSize: 15,
//                                           color: Color(0xff2F3825)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               CustomTextField(
//                                   controller: _passwordController,
//                                   hintText: 'password',
//                                   validation: validatePassword),
//                               CustomButton(
//                                 text: "Sign-up",
//                                 onTap: () {
//                                   if (_signUpFormKey.currentState!.validate()) {
//                                     signUpUser();
//                                     try {
//                                       errorMessage = 'error';
//                                     } catch (error) {
//                                       errorMessage = error.toString();
//                                     }
//                                     setState(() {});
//                                   }
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       if (_auth == Auth.signin)
//                         Form(
//                           key: _signInFormKey,
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 15.0),
//                                 child: Row(
//                                   children: const [
//                                     Text(
//                                       "Email",
//                                       style: TextStyle(
//                                           fontSize: 15,
//                                           color: Color(0xff2F3825)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               CustomTextField(
//                                   controller: _emailController,
//                                   hintText: "example@email.com",
//                                   validation: validateEmail),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 15.0),
//                                 child: Row(
//                                   children: const [
//                                     Text(
//                                       "Password",
//                                       style: TextStyle(
//                                           fontSize: 15,
//                                           color: Color(0xff2F3825)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               CustomTextField(
//                                   controller: _passwordController,
//                                   hintText: "password",
//                                   validation: validatePassword),
//                               CustomButton(
//                                 text: "Sign-in",
//                                 onTap: () {
//                                   if (_signInFormKey.currentState!.validate()) {
//                                     signInUser();
//                                     try {
//                                       errorMessage = '';
//                                     } catch (error) {
//                                       errorMessage = error.toString();
//                                     }
//                                     setState(() {});
//                                   }
//                                 },
//                               ),
//                             ],
//                           ),
//                         )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:evergreens/common/widgets/custom_button.dart';
import 'package:evergreens/common/widgets/custom_textfield.dart';
import 'package:evergreens/constants/global_variable.dart';
import 'package:evergreens/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      name: _nameController.text,
    );
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greenBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListTile(
                tileColor: _auth == Auth.signup
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greenBackgroundCOlor,
                title: const Text(
                  'Create Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signup)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _nameController,
                          hintText: 'Name',
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'Email',
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                        ),
                        const SizedBox(height: 10),
                        CustomButton(
                          text: 'Sign Up',
                          onTap: () {
                            if (_signUpFormKey.currentState!.validate()) {
                              signUpUser();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ListTile(
                tileColor: _auth == Auth.signin
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greenBackgroundCOlor,
                title: const Text(
                  'Sign-In.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signin)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'Email',
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                        ),
                        const SizedBox(height: 10),
                        CustomButton(
                          text: 'Sign In',
                          onTap: () {
                            if (_signInFormKey.currentState!.validate()) {
                              signInUser();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
