import 'package:flutter/material.dart';

import '../Onboarding_Screens/onboarding_View.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/app_background/3_people.png',),
                 fit: BoxFit.fill,alignment: Alignment.center,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 200,),
              Center(),
              RichText(text: TextSpan(
                text: 'Love the child ', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.grey.shade200,
                  shadows: [
                    Shadow(
                      color: Colors.grey.withOpacity(0.9),
                      offset: Offset(1.8, 2.6),
                      blurRadius: .4,
                    )]),
                children: [
                  TextSpan(text: 'Grow quikly', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.amber.shade200,
                      shadows: [
                        Shadow(
                          color: Colors.grey.withOpacity(0.9),
                          offset: Offset(1.8, 2.6),
                          blurRadius: .4,
                        )]))
                ]
              )),
              SizedBox(height: 60,),
              // CircularProgressIndicator(
              //   color: Colors.orange,
              // )
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingView()));
                },
                    child: Text('Let\'s Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.grey.shade300,
                shadows: [
                  Shadow(
                    color: Colors.grey.shade700,
                    offset: Offset(.4, 1.2),blurRadius: 3
                  )
                ]
                    ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
