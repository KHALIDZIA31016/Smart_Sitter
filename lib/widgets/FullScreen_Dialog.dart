
import 'package:flutter/material.dart';

class FullScreenDialog extends StatelessWidget {
  final Column myColumn ;
  const FullScreenDialog({
    super.key, required this.myColumn,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        // appBar: AppBar(toolbarHeight: 60,
        //   title: const Text('Baby Care'),
        //   centerTitle: true,
        //   backgroundColor: Colors.lime,
        //   actions: const [
        //     Icon(Icons.camera, size: 20,),
        //     SizedBox(width: 10,),
        //     Icon(Icons.more_vert),
        //     SizedBox(width: 10,)
        //   ],
        // ),
        drawer: Drawer(
          width: 250,
          child: Column(
            children:  [
              const DrawerHeader(child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar()
                  ),
                  Icon(Icons.safety_check, color: Colors.blue,),
                  Text('Its Me'),
                ],
              )),
              Expanded(
                child: ListView(
                  children:  [
                    const ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                      trailing: Icon(Icons.abc, color: Colors.blue,),
                    ),
                    const ListTile(
                      leading: Icon(Icons.man, ),
                      title: Text('Profile'),
                      trailing: Icon(Icons.abc, color: Colors.blue,),
                    ),
                    const ListTile(
                      leading: Icon(Icons.dashboard_outlined),
                      title: Text('Account'),
                      trailing: Icon(Icons.abc, color: Colors.blue,),
                    ),
                    const ListTile(
                      leading: Icon(Icons.switch_account),
                      title: Text('Switch account'),
                      trailing: Icon(Icons.abc, color: Colors.blue,),
                    ),
                    const  ListTile(
                      leading: Icon(Icons.chat_outlined),
                      title: Text('chat setting'),
                      trailing: Icon(Icons.abc, color: Colors.blue,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),

                        child: const Center(child: Text('Login', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),)),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.phone, color: Colors.white,),
            backgroundColor: Colors.amber.shade300, shape: const StadiumBorder()),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: InkWell(child: Icon(Icons.home, color: Colors.lime,)), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.task_alt, color: Colors.lime,), label: 'Tasks'),
          ],
        ),
        body: Column(
          children: [
            myColumn,

        ],),
      ),
    );
  }
}
