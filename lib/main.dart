import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pch_app/Screen_A.dart';
import 'package:pch_app/Screen_B.dart';
import 'package:pch_app/Screen_C.dart';
import 'package:pch_app/VerificationLoading.dart';

import 'EmailVerification.dart';

void main() {
  runApp(MaterialApp(
    home: EmailVerification(),
    debugShowCheckedModeBanner: false,
  ));
}

class PchApp extends StatefulWidget {
  const PchApp({super.key});

  @override
  State<PchApp> createState() => _PchAppState();
  
}

class _PchAppState extends State<PchApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Text('Project Code Hijabi',
          style: GoogleFonts.kavoon( fontSize: 36,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: Colors.white),


        ),
      ),
    );
  }
}
