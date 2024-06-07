import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, width: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),

      child: Center(child: Text('Login', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),)),
    );
  }
}
