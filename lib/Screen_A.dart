import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenA extends StatefulWidget{
  const ScreenA({super.key});

  @override
  State<StatefulWidget> createState() => _ScreenA();
}

class _ScreenA extends State<ScreenA>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Column(
      children: [
      Image.asset("assets/images/Vector 2.png", width: 1200,
          fit: BoxFit.fill, color: Colors.pink.shade100),
        Image.asset("assets/images/image1.png", width: 359,
            cacheHeight: 300,
          cacheWidth: 300, fit: BoxFit.fill),
        SizedBox(height: 15),
        Text("Building Solutions, Upholding Values",
            style: GoogleFonts.aBeeZee(
                color: Colors.white, fontSize: 20,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 35),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(3,(index){
                return Container(
                  width: index == 0 ? 15 : 15,
                  height: index == 0 ? 15 : 15,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.5),
                    borderRadius: BorderRadius.circular(15),
                    color: index == 0 ? Colors.purpleAccent : Colors.white
                  ),
                );
              },
              )
            ],
          ),
        ),
        SizedBox(height: 110,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
          child: Text("Continue", style: GoogleFonts.aBeeZee(
              color: Colors.purpleAccent, fontSize: 20,
              fontWeight: FontWeight.bold), ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
        )

        ]

      )

    );
  }
}