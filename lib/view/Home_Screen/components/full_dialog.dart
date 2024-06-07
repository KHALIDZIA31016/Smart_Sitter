import 'package:flutter/material.dart';

import '../../../widgets/FullScreen_Dialog.dart';

class FullDialog extends StatelessWidget {
  const FullDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FullScreenDialog(
      myColumn: Column(
        children: [
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
               child: CircleAvatar(
                   radius: 60,
                   child: Container(
                     decoration: const BoxDecoration(
                         image: DecorationImage(image: AssetImage('assets/Photos/pic1.jpg'), fit: BoxFit.fill),
                         shape: BoxShape.circle
                     ),
                   )
               ),
             ),
           ],
         )
        ],
      ),
    );
  }
}