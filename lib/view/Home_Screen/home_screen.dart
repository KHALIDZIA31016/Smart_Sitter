import 'package:flutter/material.dart';
import 'package:smart_sitter/utils/App_constants.dart';
import 'package:smart_sitter/view/UI/Login_Screen.dart';

import '../../Profile_Screen.dart';
import '../../widgets/FullScreen_Dialog.dart';
import '../../widgets/babyCare_profiles/babyCare_profile.dart';
import 'components/Card_container.dart';
import 'components/another_FullDialog.dart';
import 'components/elevated_AlertDialog.dart';
import 'components/full_dialog.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> itemsCount = [
  'Islamabad Early Learning and Day Care Center',
  'Fun Learning Daycare and Montessori',
  'Home Day care',
  'Honey Bees International Daycare & School',
  'Jelly Beans Day Care',
  'DAYCARE (THE LYNX SCHOOL SMC PVT LTD)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 60,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white, // Change Custom Drawer Icon Color
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Baby Care', style: TextStyle(
          fontSize: 24, color: Colors.white, fontWeight: FontWeight.w400
        ),),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: const [
          Icon(Icons.camera, size: 20, color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.more_vert, color: Colors.white,),
          SizedBox(width: 10,)
        ],
      ),
      drawer: Drawer(
        width: 280, shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.amber)
      ),
        child: Column(
          children:  [
            Container(
              height: 220,
              child: DrawerHeader(
                  padding: EdgeInsets.all(10),
                  child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 30,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/profile.png'), fit: BoxFit.contain),
                                border: Border.fromBorderSide(BorderSide(color: Colors.amber, width: 2)),
                                shape: BoxShape.circle
                            ),
                          )
                      )
                  ),
                  Icon(Icons.safety_check, color: Colors.amber, size: 50,),
                  Text('Baby Day Care', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(.4), shadows: [
                      Shadow(
                        offset: Offset(0.6, 1.7),
                        blurRadius: .6,
                        color: Colors.grey.withOpacity(.9)
                      )
                  ]
                  ),),
                ],
              )),
            ),
            Expanded(
              child: ListView(
                children:  [
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.help,  color: Colors.amber,),
                    title: Text('Support'),
                    trailing: Icon(Icons.abc, color: Colors.blue,),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.settings,  color: Colors.amber,),
                    title: Text('Settings'),
                    trailing: Icon(Icons.abc, color: Colors.blue,),
                  ),
                  const ListTile(
                    leading: Icon(Icons.man, color: Colors.amber, ),
                    title: Text('Profile'),
                    trailing: Icon(Icons.abc, color: Colors.blue,),
                  ),
                  const ListTile(
                    leading: Icon(Icons.dashboard_outlined,  color: Colors.amber,),
                    title: Text('Account'),
                    trailing: Icon(Icons.abc, color: Colors.blue,),
                  ),
                  const ListTile(
                    leading: Icon(Icons.switch_account,  color: Colors.amber,),
                    title: Text('Switch account'),
                    trailing: Icon(Icons.abc, color: Colors.blue,),
                  ),
                  const  ListTile(
                    leading: Icon(Icons.chat_outlined, color: Colors.amber,),
                    title: Text('chat setting'),
                    trailing: Icon(Icons.abc, color: Colors.blue,),
                  ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                  child: GestureDetector(
                    onTap: (){
                   showDialog(context: context, builder: (context) => AlertDialog(
                     title: Center(
                       child: Text('Do you really want to logout', style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w300
                       ),),
                     ),
                     actions: [
                       ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('No')),
                       SizedBox(width: 15,),
                       ElevatedButton(onPressed: (){
                         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
                             (context) => LoginScreen())
                             , (route) => false);
                       }, child: Text('Yes')),
                     ],
                   ));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),

                      child: const Center(
                          child: Text('Logout',
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),)
                      ),
                    ),
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
          BottomNavigationBarItem(icon: InkWell(child: Icon(Icons.home, color: Colors.amber,)), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.task_alt, color: Colors.amber,), label: 'Tasks'),
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
        
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          hintText: 'Search here...',
                          hintStyle:  const TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.search, size: 30, color: Colors.amber.shade400,),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                  ),
                ),
                InkWell(
                    onTap: (){
                      showDialog(context: (context), builder: (context)
                      => const AlertDialog(
                        title: Text('Make Filtering'),
                        contentPadding: EdgeInsets.zero,
                        clipBehavior: Clip.none,
                        actions: [
                          Icon(Icons.add_alert, color: Colors.blue,),
                          Spacer(),
                          FlutterLogo()
                        ],
                      ) );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/filter.png',height: 20, width: 20, color: Colors.black),
                          const SizedBox(width: 15,),
                          const Text('Filter',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
        
            // top baby cares
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  const Expanded(child: Divider(thickness: 3, color: Colors.red,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                        onPressed: (){
                          showDialog(
                              context: (context),
                              builder: (context)
                              => AlertDialog(
                                title: const Text('Top babies centers Near you'),
                                titlePadding: const EdgeInsets.all(10),
                                titleTextStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                                icon: const Icon(Icons.pages, color: Colors.amber,),
                                actions: [
                                  ElevatedButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: const Text('close'), clipBehavior: Clip.none,),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)
                                    => AnotherFullDialog(),
                                    ));
                                    }, child: const Text('continue')),
                            ],
        
                          )
                          );
                        },
                        child: const Text('Top Baby cares')),
                  ),
                 const Expanded(child: Divider(thickness: 3, color: Colors.blue,)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                children: [
                  CardContainer(
                      myImage: const AssetImage('assets/Photos/dc1.jpg',),
                      myText: 'Town Baby care', 
                      onPressed: (){
                        showDialog(context: (context), builder: (context)
                        =>  AlertDialog(
                          title: Text('really wanna open'),
                          actions: [
                            ElevatedAlertDialog(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              myText: 'close',
                            ),
                            ElevatedAlertDialog(
                              onPressed: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    // builder: (context) => FullDialog()
                                    builder: (context) => Profile()
                                ));
                              },
                              myText: 'Continue',
                            ),

                          ],
                        ));
                      },

                  ),
                  const SizedBox(width: 10,),
                  CardContainer(
                      myImage: const AssetImage('assets/Photos/dc2.jpg'),
                    myText: 'Twins Baby care',
                    onPressed: () {  },
                  ),
                  const SizedBox(width: 10,),
                  CardContainer(
                      myImage: const AssetImage('assets/Photos/dc3.jpg'),
                    myText: 'Inayat Khalil Baby care',
                    onPressed: () {  },
                  ),
                  const SizedBox(width: 10,),
                  CardContainer(
                      myImage: const AssetImage('assets/Photos/dc4.jpg'),
                    myText: 'Joseph Baby care', 
                    onPressed: () {  },
                  ),

                ],
              ),
            ),
        
            // see the gallery
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  const Expanded(child: Divider(thickness: 3, color: Colors.red,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                     => const Dialog.fullscreen(),
                      ));
                    }, child: const Text('See the gallery')),
                  ),
                  const Expanded(child: Divider(thickness: 3, color: Colors.blue,)),
                ],
              ),
            ),
        SizedBox(height: 20,),
            SizedBox(
              height: 600,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: itemsCount.length,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index)
                  {
                return  InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: ListTile(
                    title: Text(itemsCount[index]),
                    subtitle: const Text('23 East, Saddar Metro station'),
                    contentPadding: const EdgeInsets.all(10),
                    leading: CircleAvatar(
                        radius: 30,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/Photos/one.png'), fit: BoxFit.fill),
                              shape: BoxShape.circle
                          ),
                        )
                    ),
                    trailing: const Icon(Icons.abc, color: Colors.blue,),

                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}






