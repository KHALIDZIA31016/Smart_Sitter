import 'package:flutter/material.dart';
import 'package:smart_sitter/utils/App_Colors.dart';
import 'package:smart_sitter/view/Home_Screen/home_screen.dart';
import 'package:smart_sitter/view/UI/Signup_Screen.dart';

import '../../widgets/Login_Button.dart';
import '../Forget_password/forget_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  bool visiblePassword = false;
  final TextEditingController _passController = TextEditingController();
  String? _passError;

  final TextEditingController _emailController = TextEditingController();
  String? _emailError;



  String? _validatePassword (String? value){
    if (value == null || value.isEmpty) {
      return  _passError = 'Field could not be null';
    } else  if (value.length < 6) {
        return _passError = 'Length must greater than 6';
    }  else {
        return null;
    }
  }

  String? _validateEmail (String? value){
    if (value == null || value.isEmpty ) {
      return 'Enter teh email';
    } else if (value == '@gmail.com'){
      return 'Email is not valid';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/app_background/app_bg.png',),
                fit: BoxFit.cover
            )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50,),
                    Center(
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                          text: 'Your ',  style: TextStyle(color: Colors.white, fontSize: 18),
                          children: [
                            TextSpan(text: 'Quick Credentials', style: TextStyle(color: AppColor.whiteColor, fontFamily: 'Poppins', fontWeight: FontWeight.w700 )),
                            TextSpan(text: ' helps \n to login an account', style: TextStyle(color: Colors.white,))
                          ]
                      )),
                    ),
                    Image.asset('assets/pics/login.png', scale: 8,),
                     Padding(
                      padding:  EdgeInsets.only(left: 30),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Email Address', style: TextStyle(color: AppColor.whiteColor, fontWeight: FontWeight.w400, fontSize: 16),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      child: TextFormField(
                        controller: _emailController,
                        validator: _validateEmail,
                        decoration: InputDecoration(
                          isDense: true,
                          errorText: _emailError,
                          contentPadding: EdgeInsets.zero,
                          labelText: 'Enter an Email',
                          labelStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.alternate_email, color: Colors.grey,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),

                     Padding(
                      padding:  EdgeInsets.only(left: 30,),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Password', style: TextStyle(color: AppColor.whiteColor, fontWeight: FontWeight.w600, fontSize: 16),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      child: TextFormField(
                        obscureText: visiblePassword ? true : false,
                        controller: _passController,
                        validator: _validatePassword,
                        decoration: InputDecoration(
                          errorText: _passError,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            labelText: 'Enter password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.password_outlined, color: Colors.grey),
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                visiblePassword = !visiblePassword;
                              });
                            }, icon: Icon(
                              visiblePassword
                              ? Icons.visibility_off
                               : Icons.visibility,
                              color: visiblePassword ? AppColor.whiteColor: Colors.grey,
                            )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),
                   Container(
                     child:  Column(
                       children: [
                         Padding(
                           padding: EdgeInsets.symmetric( horizontal: 30, vertical: 5),
                           child: Align(
                               alignment: Alignment.centerRight,
                               child: GestureDetector(
                                   onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context) =>ForgetPassword() ));
                                   },
                                   child: Text('Forget Password?',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300, color: Colors.blueGrey,
                                       // decoration: TextDecoration.underline, decorationColor: Colors.grey,
                                       shadows: [
                                         Shadow(
                                           color: Colors.white.withOpacity(0.9),
                                           offset: Offset(.8, 1.6),
                                           blurRadius: .4,
                                         )]),))),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 40),
                           child: InkWell(
                             onTap: (){
                               if (_formKey.currentState!.validate()) {
                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfull logged in')));
                               }
                             },
                             child: Container(
                               height: 50, width: 240,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.amber,
                               ),

                               child: Center(child:
                               Text('Login Me',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w700,
                                     fontSize: 18,
                                     color: Colors.white,
                                     shadows: [
                                       Shadow(
                                           color: Colors.grey.withOpacity(0.5),
                                           blurRadius: .4,
                                           offset: const Offset(.4, 1.7)
                                       )
                                     ]
                                 ),
                               )),
                             ),
                           ),
                         ),
                         const SizedBox(height: 30,),
                         Row(
                           children: [

                             Padding(
                               padding: const EdgeInsets.only(left: 30),
                               child: Text('Don\'t have an account?',
                                 style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.w700,
                                     color: Colors.grey.shade200,
                                     shadows: [
                                       Shadow(
                                           offset: Offset(1.0, .7),
                                           blurRadius: 2.7,
                                           color: Colors.grey
                                       )
                                     ]
                                 ),
                               ),
                             ),
                             SizedBox(width: 10,),
                             GestureDetector(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(
                                     builder: (context)
                                     => const SignupScreen())
                                 );
                               },
                               child: const Text('Signup',
                                 style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w700,
                                     color: Colors.amber,
                                     shadows: [
                                       Shadow(
                                           offset: Offset(1.0, 1.7),
                                           blurRadius: .7,
                                           color: Colors.blueGrey
                                       )
                                     ]
                                 ),
                               ),
                             )
                           ],
                         ),
                       ],
                     )
                   )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
