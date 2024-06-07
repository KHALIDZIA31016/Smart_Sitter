
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:smart_sitter/view/Forget_password/otp_verification.dart';
import 'package:smart_sitter/view/UI/Login_Screen.dart';
import 'package:smart_sitter/widgets/Login_Button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 60,
        title: Text('Forget Screen', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.grey.shade200,
            shadows: [
              Shadow(
                color: Colors.grey.withOpacity(0.9),
                offset: Offset(1.8, 2.6),
                blurRadius: .4,
              )]),),

        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        backgroundColor: Colors.amber,
        actions: [
          Icon(Icons.camera, size: 30,color: Colors.white,),
          SizedBox(width: 10,),
          InkWell(
              onTap: (){
                
              },
              child: Icon(Icons.more_vert, color: Colors.white,)),
          SizedBox(width: 10,)
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Enter your number to reset password',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  shadows: [
                    Shadow(
                      offset: Offset(.2, 1.4),
                      color: Colors.grey.withOpacity(.9),
                      blurRadius: 0.4,
                    )
                  ]
                ),),
              ),
              Image.asset('assets/images/reset.png', scale: 8, ),
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Forget Screen',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.amber,
                        shadows: [
                          Shadow(
                            offset: Offset(.2, 2.4),
                            color: Colors.grey.withOpacity(.9),
                            blurRadius: 2,
                          )
                        ]
                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 140),
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
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen()));
                },
                child: Container(
                  height: 60, width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
          
                  child: Center(
                      child: Text('Submit',
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(.2, 2.4),
                                color: Colors.grey.withOpacity(.9),
                                blurRadius: 2,
                              )
                            ]),)),
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
