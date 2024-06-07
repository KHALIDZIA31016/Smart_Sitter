import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smart_sitter/utils/App_constants.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, excludeHeaderSemantics: true, title: Text('Town Baby care',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade300,
            shadows: [
              Shadow(
                color: Colors.grey.withOpacity(0.9),
                offset: Offset(1.8, 2.6),
                blurRadius: .4,
              )]),
      ), centerTitle: true,),
      body:  SingleChildScrollView(
        child: Column(
          children: [
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                 child: CircleAvatar(
                     radius: 45,
                     child: Container(
                       decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage('assets/Photos/dc1.jpg'), fit: BoxFit.fill),
                           shape: BoxShape.circle
                       ),
                     )
                 ),
               ),
               RichText(
                 textAlign: TextAlign.left,
                 text: TextSpan(text: 'Baby Care\n\n',
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                         shadows: [
                           Shadow(
                             color: Colors.grey.withOpacity(0.9),
                             offset: Offset(1.8, 2.6),
                             blurRadius: .4,
                           )]),
                     children: [
                       TextSpan(text: 'Islamabad Early Learning \nand Day Care Center',
                         style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black,
                             shadows: [
                               Shadow(
                                 color: Colors.grey.withOpacity(0.9),
                                 offset: Offset(.8, 1.6),
                               )]),
                       )
                     ]
                 ),
               ),
             ],
           ),
            const Text('Everyone Likes it big', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
            RatingBar.builder(
              initialRating: 3,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
itemSize: 30,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
                size: 10,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.blue,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Contact baby care',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                        shadows: [
                        Shadow(
                        color: Colors.grey.withOpacity(0.9),
                        offset: Offset(1.8, 2.6),
                        blurRadius: .4,
                        )]),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 2, color: Colors.brown,)),
        
                ],
              ),
            ),
           20.h,
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Image.asset('assets/icons/insta.png', scale: 10,),
               Image.asset('assets/icons/whts.png', scale: 10,),
               Image.asset('assets/icons/twtr.png', scale: 10,),
               Image.asset('assets/icons/phone.png', scale: 10,),
             ],
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.blue,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Dark Categories',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                      shadows: [
                      Shadow(
                      color: Colors.grey.withOpacity(0.9),
                      offset: Offset(1.8, 2.6),
                      blurRadius: .4,
                    )]),),
                  ),
                  Expanded(child: Divider(thickness: 2, color: Colors.brown,)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(15),
                    border: Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, size: 50, color: Colors.amber.withOpacity(.7),),
                      SizedBox(height: 20,),
                      Text('Profile',   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: Offset(1.8, 2.6),
                              blurRadius: .4,
                            )]),
                          ),
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(15),
                    border: Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.auto_graph_outlined, size: 50, color: Colors.amber,),
                      SizedBox(height: 20,),
                      Text('Peformance',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: Offset(1.8, 2.6),
                              blurRadius: .4,
                            )]),),
                    ],
                  ),
                ),
              ],
            ),
            30.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
              children: [
                Container(
                  width: 140,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(15),
                    border: Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.format_list_numbered_rounded , size: 50, color: Colors.amber,),
                      SizedBox(height: 20,),
                      Text('Form', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: Offset(1.8, 2.6),
                              blurRadius: .4,
                            )]),),
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(15),
                    border: Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home_repair_service_outlined, size: 50, color: Colors.amber,),
                      SizedBox(height: 20,),
                      Text('Reports', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: Offset(1.8, 2.6),
                              blurRadius: .4,
                            )]),),
                    ],
                  ),
                ),
              ],
            ),
            30.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
              children: [
                Container(
                  width: 140,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(15),
                    border: Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.contact_phone , size: 50, color: Colors.amber,),
                      SizedBox(height: 20,),
                      Text('Contact', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: Offset(1.8, 2.6),
                              blurRadius: .4,
                            )]),),
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(15),
                    border: Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.pin_drop, size: 50, color: Colors.amber,),
                      SizedBox(height: 20,),
                      Text('Office Location', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade200,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: Offset(1.8, 2.6),
                              blurRadius: .4,
                            )]),),
                    ],
                  ),
                ),
              ],
            ),
            30.h,
            InkWell(
              onTap: (){

              },
              child: Container(
                height: 50, width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),

                child: Center(
                    child: Text('Contact our Official',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.grey.shade100,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.9),
                              offset: Offset(1.8, 2.6),
                              blurRadius: 1.12,
                            )]),
                    )),
              ),
            ),
            30.h
          ],
        ),
      ),
    );
  }
}
