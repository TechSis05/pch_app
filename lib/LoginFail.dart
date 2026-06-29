import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFail extends StatefulWidget{
  const LoginFail ({super.key});

  @override
  State<LoginFail> createState() => _LoginFailState();

}


class _LoginFailState extends State<LoginFail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(padding: EdgeInsets.symmetric(
              horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 56,),
                  Center(
                      child: Text('Sign in', style: GoogleFonts.inter(
                          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold
                      ),
                      )
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 18, color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                          ),
                          TextSpan(
                              text: " Create an Account", style: TextStyle(
                            color: Colors.purpleAccent, fontWeight: FontWeight.bold,
                          )
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text("Email or Phone Number", style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10,),
                  //Email or Phone Number field
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email or Phone Number",
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 22,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.purpleAccent,
                          width: 2,),
                      ),
                    ),
                  ),
                  Text("Incorrect email",
                      style: GoogleFonts.inter(
                          color:  Colors.red, fontSize: 13, fontWeight: FontWeight.normal)
                  ),
                  
                  SizedBox(height: 10,),
                  Text('Password', style: TextStyle(color: Colors.black,
                      fontSize: 18, fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  //Password Field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 22,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_outlined, color:
                      Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.purpleAccent,
                          width: 2,),

                      ),
                    ),

                  ),
                  SizedBox(height: 10,),
                  Text('Forgot password?', style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 18, fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 55,),
                  //Login Button
                  Container(
                    width: double.infinity, height: 65,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Login', style: TextStyle(color: Colors.white,
                        fontSize: 18, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),

          )

      ),

    );
  }

}
