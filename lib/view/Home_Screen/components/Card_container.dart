
import 'package:flutter/material.dart';

class CardContainer extends StatefulWidget {
  final ImageProvider myImage ;
  final String myText ;
  final VoidCallback onPressed;

  const CardContainer({
    super.key,
    required this.myImage,
    required this.myText,
    required this.onPressed,
  });

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.onPressed,
          child: Container(
            height: 120, width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.lime.shade600,
              image: DecorationImage(
                image: widget.myImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Text(widget.myText, style: TextStyle(fontSize: 14, color: Colors.black54.withOpacity(.9), fontWeight: FontWeight.w600, shadows: [
          Shadow(
            color: Colors.brown.withOpacity(1),
            offset: Offset(0.3, 2.8),
            blurRadius: 60
          )
        ]),
        )
      ],
    );
  }
}
