import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationLoading extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _VerificationLoading();

}

class _VerificationLoading extends State<VerificationLoading> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 94),
            Text("Verifying your details...", style:
            GoogleFonts.inter(
                color: Colors.black, fontSize: 24,
                fontWeight: FontWeight.bold))
          ],
        ),
      )
    );

  }

}