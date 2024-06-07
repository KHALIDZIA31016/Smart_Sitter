import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();

}

class _TestScreenState extends State<TestScreen> {

  List<String> newList = ['AMie', 'amwm', 'new','nedw', 'wdww','newv', 'wfww'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: newList.length,
              itemBuilder: (context, index){
              return Padding(
                padding:  EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text('amir'),
                  subtitle: Text('amir nmae'),
                  leading: Icon(Icons.safety_check),
                  trailing: Icon(Icons.flutter_dash_outlined),
                  tileColor: Colors.teal.shade300,

                ),
              );
            },),
          )
        ],
      ),
    );
  }
}
