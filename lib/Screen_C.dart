import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenC extends StatefulWidget{
  const ScreenC({super.key});

  @override
  State<StatefulWidget> createState() => _ScreenC();
}

class _ScreenC extends State<ScreenC>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: Column(
            children: [
              Image.asset("assets/images/Vector 2.png", width: 1200,
                  fit: BoxFit.fill, color: Colors.pink.shade100),
              Image.asset("assets/images/image3.png", width: 359,
                  cacheHeight: 300,
                  cacheWidth: 300, fit: BoxFit.fill),
              SizedBox(height: 15),
              Text("Coding beyond limit",
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
                        width: index == 2 ? 15 : 15,
                        height: index == 2 ? 15 : 15,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.5),
                            borderRadius: BorderRadius.circular(15),
                            color: index == 2 ? Colors.purpleAccent : Colors.white
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
                child: Text("Log in", style: GoogleFonts.aBeeZee(
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