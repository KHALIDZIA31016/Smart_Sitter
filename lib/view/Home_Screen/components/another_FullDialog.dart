import 'package:flutter/material.dart';

import '../../../widgets/babyCare_profiles/babyCare_profile.dart';

class AnotherFullDialog extends StatelessWidget {
  const AnotherFullDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      insetAnimationCurve: Curves.bounceInOut,
      insetAnimationDuration: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          clipBehavior: Clip.none,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [



            BabyCareProfile(
              myImage: AssetImage('assets/Photos/one.png', ),
            ),


            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance2', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance3', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance4', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance2', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance3', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance4', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance1', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance2', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance3', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
            Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                  SizedBox(height: 20,),
                  Text('Peformance4', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.deepPurple),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

