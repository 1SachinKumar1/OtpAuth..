import 'package:demo/UI/ScreenFour/ScreenFour.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ScreenTwo/ScreenTwo.dart';

class ScreenThree extends StatefulWidget {
  final String verificationId;

  const ScreenThree({required this.verificationId, Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  final TextEditingController otpNumber1 = TextEditingController();
  final TextEditingController otpNumber2 = TextEditingController();
  final TextEditingController otpNumber3 = TextEditingController();
  final TextEditingController otpNumber4 = TextEditingController();
  final TextEditingController otpNumber5 = TextEditingController();
  final TextEditingController otpNumber6 = TextEditingController();

  //verification
  Future<void> signInWithOTP(String smsCode, String verificationId) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      User? user = userCredential.user;
      if (user != null) {
        // OTP verification successful
        // Navigate to the next screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenFour(),
          ),
        );
      } else {
        // OTP verification failed
        // Show an error message
      }
    } catch (e) {
      print('Failed to sign in with OTP: $e');
      // Handle sign-in failure, display an error message, or try again
    }
  }

  //UI
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
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ScreenTwo()));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Verify Phone",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Code is sent to your number.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        controller: otpNumber1,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xff93D2F3),
                            border: OutlineInputBorder()),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        controller: otpNumber2,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xff93D2F3),
                            border: OutlineInputBorder()),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        controller: otpNumber3,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xff93D2F3),
                            border: OutlineInputBorder()),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        controller: otpNumber4,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xff93D2F3),
                            border: OutlineInputBorder()),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        controller: otpNumber5,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xff93D2F3),
                            border: OutlineInputBorder()),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        controller: otpNumber6,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xff93D2F3),
                            border: OutlineInputBorder()),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Didn't receive the code?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff6a6c7b),
                    ),
                  ),
                  Text(
                    "Request Again",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff061d28),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                width: 380,
                decoration: const BoxDecoration(
                  color: Color(0xff2e3b62),
                ),
                child: Center(
                    child: GestureDetector(
                  onTap: () async {
                    String smsCode = otpNumber1.text.trim() +
                        otpNumber2.text.trim() +
                        otpNumber3.text.trim() +
                        otpNumber4.text.trim() +
                        otpNumber5.text.trim() +
                        otpNumber6.text.trim();
                    String verificationId = widget.verificationId;
                    await signInWithOTP(smsCode, verificationId);
                  },
                  child: const Text(
                    "VERIFY AND CONTINUE",
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
