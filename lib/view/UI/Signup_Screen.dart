import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:smart_sitter/view/UI/Login_Screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/app_background/bg.png',
                ),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            text: 'Must have to ',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: [
                              TextSpan(
                                  text: 'create account',
                                  style: TextStyle(
                                    color: Colors.amber,
                                  )),
                            ])),
                  ),

                  // First and Last Name

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('First Name')),
                                const SizedBox(height: 10,),
                                TextFormField(
                                  decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'First Name',
                                      prefixIcon: Icon(Icons.person, color: Colors.amber,),
                                      labelStyle: const TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                      )
                                  ),

                                )
                              ],
                            )),
                       const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Last Name')),
                                const SizedBox(height: 10,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    isDense: true,
                                      labelText: 'Last Name',
                                      prefixIcon: Icon(Icons.person, color: Colors.amber),
                                      labelStyle: const TextStyle(color: Colors.grey),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                )
                              ],
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),

                  // Email Field
                   Padding(
                    padding: const EdgeInsets.only(left: 20, right: 40),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child:  Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Email Address')),
                            const SizedBox(height: 10,),
                            TextFormField(
                              decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Enter the email',
                                  prefixIcon: Icon(Icons.alternate_email, color: Colors.amber),
                                  // suffixIcon: Center(child: Padding(
                                  //   padding: EdgeInsets.all(12.0),
                                  //   // child: Align(
                                  //   //     alignment: Alignment.centerRight,
                                  //   //     child: Text('@gmail.com', style: TextStyle(color: Colors.amber.shade400),)),
                                  // )),
                                  labelStyle: const TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              ),

                            )
                          ],
                        )),
                  ),
                  // Password Field
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 40, top: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child:  Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Password')),
                            const SizedBox(height: 10,),
                            TextFormField(
                              decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Enter password',
                                  prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.amber),
                                  suffixIcon:  Icon(Icons.remove_red_eye_outlined, color: Colors.amber.shade400),
                                  labelStyle: const TextStyle(color: Colors.grey, ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              ),

                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 40, top: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child:  Column(
                          children: [
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Confirm Password')),
                            const SizedBox(height: 10,),
                            TextFormField(
                              decoration: InputDecoration(
                                  isDense: true,
                                  labelText: 'Confirm Password',
                                  prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.amber),
                                  suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.amber.shade400),
                                  labelStyle: const TextStyle(color: Colors.grey, ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              ),

                            )
                          ],
                        )),
                  ),
                  // intel phone
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10),
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Phone Number')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 40, top: 15),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'PK',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blue,
                          value: ischecked, onChanged: (value){
                        setState(() {
                          ischecked = value!;
                        });

                      }),
                      Text('Privacy concern',),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Container(
                      height: 50, width: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),

                      child: Center(
                          child: Text('Sign Up',
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),)),
                    ),
                  ),

                  // don't have an account
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Already have an account?',
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
                              => const LoginScreen())
                          );
                        },
                        child: const Text('Sign In',
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
                  // GestureDetector(
                  //     onTap: (){
                  //       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  //     },
                  //     child: Text('Sign In', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.amber)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
