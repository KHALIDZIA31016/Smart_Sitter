import 'package:flutter/material.dart';
import 'package:smart_sitter/view/Home_Screen/components/full_dialog.dart';

class ElevatedAlertDialog extends StatelessWidget {
  final String myText;
  final VoidCallback onPressed;
  const ElevatedAlertDialog({
    super.key,
    required this.myText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
        child: Text(myText)
    );
  }
}