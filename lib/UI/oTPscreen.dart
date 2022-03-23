import 'package:chat_application/UI/HomeScreen.dart';
import 'package:chat_application/UI/constatnt.dart';
import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class Otpscreen extends StatefulWidget {
  final String phonenumber;
  const Otpscreen({
    Key? key,
    required this.phonenumber,
  }) : super(key: key);

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenheight(context) / 10 * 1.5),
              child: Text(
                'Verify the number + ${widget.phonenumber}, ',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image(image: AssetImage('assets/otp.png')),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: OtpPinField(
                onSubmit: (text) => {},
                otpPinFieldStyle: OtpPinFieldStyle(
                  defaultFieldBorderColor: Colors
                      .green, // border color for inactive/unfocused Otp_Pin_Field
                  activeFieldBorderColor: Colors
                      .green, // border color for active/focused Otp_Pin_Field
                  defaultFieldBackgroundColor: Colors
                      .white, // Background Color for inactive/unfocused Otp_Pin_Field
                  activeFieldBackgroundColor: Color.fromARGB(255, 223, 252,
                      238), // Background Color for active/focused Otp_Pin_Field
                ),
                keyboardType: TextInputType.number,
                otpPinFieldDecoration: OtpPinFieldDecoration.custom,
              ),
            ),
            SizedBox(
              height: screenheight(context) / 10 * 2,
            ),
            ElevatedButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text('Verify'))
          ],
        ),
      ),
    ));
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Additional"),
      content: Text(
          "FOr testing purpose only.\nPlease Click on the BUtton to proceed"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
