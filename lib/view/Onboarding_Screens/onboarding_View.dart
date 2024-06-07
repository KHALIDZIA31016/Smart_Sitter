import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_sitter/view/Home_Screen/home_screen.dart';
import 'package:smart_sitter/view/UI/Login_Screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/App_Colors.dart';
import 'onboarding_items.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = OnboardingItems();
  final pageController = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        // color: Colors.white,

        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: isLastPage ? getStarted() : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // skip Button
            TextButton(onPressed: () => pageController.jumpToPage(controller.items.length - 1),
                child: Text('Skip')),
            // indicator
            SmoothPageIndicator(
              controller: pageController,
              count: controller.items.length,
              onDotClicked: (index) => pageController.animateToPage(index, duration: Duration(seconds: 1), curve: Curves.easeIn),
              effect: const WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                // activeDotColor: primaryColor2,
              ),
            ),

            // Next Button
            TextButton(onPressed: () => pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn),
                child: Text('Next')),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: PageView.builder(
          onPageChanged: (index) => setState(() => isLastPage = controller.items.length - 1 == index ),
            itemCount: controller.items.length,
            controller: pageController,
            itemBuilder: (context, index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(controller.items[index].image),
              SizedBox(height: 20,),
              Text(controller.items[index].title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(controller.items[index].description, textAlign: TextAlign.center,),
            ],
          );
        }),
      ),
    );
  }
  // Get Started button
  Widget getStarted(){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),

      ),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      child: TextButton(
        onPressed: () async{
          final pres = await SharedPreferences.getInstance();
          pres.setBool('onboarding', true);
          if (!mounted) return;
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
        },
        child: Text('Let\'s Get started', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.grey.withOpacity(0.9),
                offset: Offset(1.8, 2.6),
                blurRadius: .4,
              )]),),
      ),
    );
  }
}
