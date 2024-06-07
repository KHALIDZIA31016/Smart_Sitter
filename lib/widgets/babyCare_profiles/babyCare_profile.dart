import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BabyCareProfile extends StatelessWidget {
  final AssetImage myImage;
  const BabyCareProfile({
    super.key,
    required this.myImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (context) => Dialog.fullscreen(
          child:Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Islamabad Early Learning and Day Care Center', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('5.0', style: TextStyle(fontSize: 16),),
                      SizedBox(width: 10,),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 25,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(width: 10,),
                      Text('(162)', style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('Open 24 hour', style: TextStyle(fontSize: 16, color: Colors.blue),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){}, child: Text('Website')),
                      ElevatedButton(onPressed: (){}, child: Text('Diretion')),
                      ElevatedButton(onPressed: (){}, child: Text('Call')),
                      ElevatedButton(onPressed: (){}, child: Text('Share')),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SizedBox(height: 10,),
                  // Text('Services', style: TextStyle(fontSize: 16, color: Colors.blue),),
                  SizedBox(
                    height: 200,
                    child: DefaultTabController(
                      length: 5,
                      child: Scaffold(
                        appBar: AppBar(
                          bottom: const TabBar(
                            tabs: [
                              Tab(text: 'Overview',),
                              Tab(text: 'Services',),
                              Tab(text: 'Reviews',),


                            ],
                          ),
                        ),
                        body: TabBarView(
                          children: [
                            Text('one'),
                            Text('two'),
                            Text('three'),


                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ));
      },
      child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(15),
            border: const Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
          ),
          child: Image(image: myImage, fit: BoxFit.cover,),
      ),
    );
  }
}