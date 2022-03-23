// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_application/UI/oTPscreen.dart';
import 'package:chat_application/UI/constatnt.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class Phonenumberfield extends StatefulWidget {
  const Phonenumberfield({Key? key}) : super(key: key);

  @override
  State<Phonenumberfield> createState() => _PhonenumberfieldState();
}

TextEditingController _phonenumnercode = TextEditingController(text: '+');
TextEditingController _phonenumner = TextEditingController();
var countryname;
var countrycodes;
var phonecode;
var phone;
bool _validate = false;
final formKey = GlobalKey<FormState>();

class _PhonenumberfieldState extends State<Phonenumberfield> {
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
                'Verify Your Number',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 58, 185, 62),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'WhatsApp will need to verify your number',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showCountryPicker(
                  context: context,
                  //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                  exclude: <String>['KN', 'MF'],
                  //Optional. Shows phone code before the country name.
                  // showPhoneCode: true,

                  showWorldWide: false,
                  onSelect: (Country country) {
                    setState(() {
                      countryname = country.displayNameNoCountryCode;
                      _phonenumnercode.text = country.phoneCode;
                    });
                    print('Select country: ${country.displayName}');
                  },
                  // Optional. Sets the theme for the country list picker.
                  countryListTheme: CountryListThemeData(
                    // Optional. Sets the border radius for the bottomsheet.
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    // Optional. Styles the search field.
                    inputDecoration: InputDecoration(
                      labelText: 'Search',
                      hintText: 'Start typing to search',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xFF8C98A8).withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                  width: 280,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Center(
                      child: Text(
                    '$countryname',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.w600),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Row(
                  children: [
                    SizedBox(
                      width: 90,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                  .hasMatch(value)) {
                            //  r'^[0-9]{10}$' pattern plain match number with length 10
                            return "Enter Code";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(),
                        controller: _phonenumnercode,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 9, 83, 11)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                    .hasMatch(value)) {
                              //  r'^[0-9]{10}$' pattern plain match number with length 10
                              return "Enter Phone Number";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(),
                          controller: _phonenumner,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenheight(context) / 10 * 4,
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Otpscreen(
                                  phonenumber:
                                      '${_phonenumnercode.text} ${_phonenumner.text}',
                                )));
                  }
                },
                child: Text('Send OPT'))
          ],
        )),
      ),
    );
  }
}
