import 'package:demo/UI/ScreenOne/ScreenOne.dart';
import 'package:demo/UI/ScreenThree/ScreenThree.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  TextEditingController phoneNumberController = TextEditingController();
  String? _verificationId;

  //otp retrieving code
  final FirebaseAuth auth = FirebaseAuth.instance;

  void verifyNumber() {
    auth.verifyPhoneNumber(
      phoneNumber: phoneNumberController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("you are logged in.");
        });
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        print('OTP code sent. Verification ID: $verificationId');
        _verificationId = verificationId;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenThree(verificationId: verificationId),
          ),
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print(
            'OTP code auto retrieval timeout. Verification ID: $verificationId');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10),
                  child: Container(
                    alignment: const Alignment(-0.9, 0.5),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ScreenOne()));
                      },
                      child: Image.asset(
                        "assets/images/img_3.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Please enter your mobile number",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "You'll receive a 6 digit code\n            to verify next.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 40,
              ),
              Stack(children: [
                Positioned(
                  top: 15,
                  left: 35,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset("assets/images/img.png"),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 380,
                    child: TextField(
                      controller: phoneNumberController,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          hintText: "Mobile Number",
                          prefix: SizedBox(
                            width: 100, // Adjust the width as needed
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('+91  -  ',
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ))),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                width: 380,
                decoration: const BoxDecoration(
                  color: Color(0xff2e3b62),
                ),
                child: Center(
                    child: GestureDetector(
                  onTap: verifyNumber,
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
