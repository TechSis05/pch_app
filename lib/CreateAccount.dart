import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget{
  const CreateAccount ({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();

}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          Padding(padding:
          EdgeInsets.symmetric(
              horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(height: 56,),
                Center(
                    child: Text('Create Account', style: GoogleFonts.inter(
                        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold
                    ),
                    ),
                ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 18, color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Already have an account?",
                            ),
                            TextSpan(
                                text: " Login", style: TextStyle(
                              color: Colors.purpleAccent, fontWeight: FontWeight.bold,
                            )
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Text("Full name", style: TextStyle(
                      color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 10,),
                    //Full name field
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your last name first",
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 22,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey,
                            width: 2,),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Email', style: TextStyle(color: Colors.black,
                        fontSize: 18, fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    //Email field
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email address",
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 22,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey,
                            width: 2,),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Phone Number ', style: TextStyle(color: Colors.black,
                        fontSize: 18, fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    //Phone Number field
                    TextField(
                      decoration: InputDecoration(
                        hintText: "+1 ^ 000 0000000",
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 22,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey,
                            width: 2,),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Password', style: TextStyle(color: Colors.black,
                        fontSize: 18, fontWeight: FontWeight.bold
                    ),),
                    //Password field
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
                          borderSide: BorderSide(color: Colors.grey,
                            width: 2,),

                        ),
                      ),
                    ),
                    SizedBox(height: 37,),
                    //Create Account
                    Container(
                      width: double.infinity, height: 65,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text('Create Account', style: TextStyle(color: Colors.white,
                          fontSize: 18, fontWeight: FontWeight.bold),),
                    )
                ]
              )
          ),
      )
      ),
    );
  }
}