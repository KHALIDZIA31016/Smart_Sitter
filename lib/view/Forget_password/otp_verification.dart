import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final String _message = 'Invalid OTP';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Phone Number'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: TextField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your OTP',
                  hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                print('${_message.toString()}');
                },
              child: Text('Send OTP'),
            ),
          ],
        ),
      ),
    );
  }

  // void sendOTP() async {
  //   String phoneNumber = _phoneNumberController.text;
  //
  //   // var response = await http.post(
  //   //   '',
  //   //   body: {'phoneNumber': phoneNumber},
  //   // );
  //
  //   if (response.statusCode == 200) {
  //     // OTP sent successfully, navigate to OTP verification screen
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => OTPVerificationScreen()),
  //     );
  //   } else {
  //     // Failed to send OTP, show error message
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Error'),
  //           content: Text('Failed to send OTP. Please try again.'),
  //           actions: <Widget>[
  //             ElevatedButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('OK'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }
}

class OTPVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter OTP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter OTP',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Verify OTP logic here
              },
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}




