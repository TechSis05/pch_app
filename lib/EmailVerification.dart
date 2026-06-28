import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification ({super.key});

  @override
  State<StatefulWidget> createState() => _EmailVerification();
}

class _EmailVerification extends State<EmailVerification>{

  TextEditingController _dummyOtp = TextEditingController(text: '3333');

  @override
  void dispose() {
    _dummyOtp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(width: 64,
    height: 72,
    textStyle: GoogleFonts.inter(
        color: Colors.black, fontSize: 24,
        fontWeight: FontWeight.normal
    ),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(8)),

    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height: 94),
                Text("Verify your Email", style:
                GoogleFonts.inter(
                    color: Colors.black, fontSize: 24,
                    fontWeight: FontWeight.bold)),

                Text("A 4-digit code was sent to james****", style: GoogleFonts.inter(
                    color: Colors.grey
                    , fontSize: 16, fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal)
                ),
                SizedBox(height: 100),

                Pinput(length: 4, controller: _dummyOtp,defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: Colors.black, width: 1.5)
                      )
                  ),
                  submittedPinTheme: defaultPinTheme,
                  onCompleted: (pin) => print("Entered PIN: $pin"),
                  ),
                SizedBox(height: 104),

                TextButton(onPressed: () {
                },
                  style: TextButton.styleFrom(backgroundColor: Colors.grey.shade100,
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)
                      )
                  ),
                  child: Text("Resend Code in 01:33 ", style: GoogleFonts.inter(
                      color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal)
                  ),
                ),
                SizedBox(height: 4),

                TextButton(onPressed: () {
                },
                  child: Text("Verify via SMS ", style: GoogleFonts.inter(
                      color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)
                  ),
                ),
              ],
              ),
            ),
          ),
        )
    );
  }

}