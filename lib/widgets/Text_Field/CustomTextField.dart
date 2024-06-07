import 'package:flutter/material.dart';


class MyTextField extends StatefulWidget {
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final String labelText;
  final TextStyle? labelStyle;
  bool obscureText;

  MyTextField({
    super.key,
    this.suffixIcon ,
    this.prefixIcon,
    required this.labelText,
    this.labelStyle,
    this.obscureText = false,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {


  @override
  Widget build(BuildContext context) {



    return TextFormField(
      obscureText: widget.obscureText ? true :false,
      decoration: InputDecoration(
        isDense: true,
        labelText: widget.labelText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.obscureText
        ? IconButton(
          icon: Icon(Icons.visibility_off),
          onPressed: () {
            setState(() {
              widget.obscureText = false;
            });
          },
        )
            : IconButton(
          icon: Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              widget.obscureText = true;
            });
          },
        ),

        labelStyle: widget.labelStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.lime),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
