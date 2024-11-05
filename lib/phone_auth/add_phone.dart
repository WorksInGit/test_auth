import 'package:test_auth/phone_auth/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class AddPhone extends StatefulWidget {
  const AddPhone({super.key});

  @override
  State<AddPhone> createState() => _AddPhoneState();
}

class _AddPhoneState extends State<AddPhone> {
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: (){
          return FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: Colors.black),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.DROPDOWN),
                    initialValue: number,
                    selectorTextStyle: TextStyle(color: Colors.white),
                    searchBoxDecoration: InputDecoration(),
                    textFieldController: TextEditingController(),
                    formatInput: false,
                    keyboardType: TextInputType.number,
                    inputDecoration: InputDecoration(
                        label: Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.white),
                        ),
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpPage(),
                          ));
                    },
                    child: Text(
                      'Send OTP',
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
