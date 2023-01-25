import 'package:flutter/material.dart';
import 'package:recop/homepage.dart';
import 'package:recop/widgets.dart';
import 'package:recop/theme.dart';

class signuppage extends StatefulWidget {
  const signuppage({Key? key}) : super(key: key);

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgLoginpage.png'), ///set bgImage
            fit: BoxFit.fitHeight,
          ),
        ),
        child: SingleChildScrollView(
          child: Container( ///field box
            padding: EdgeInsets.all(25.0),
            margin: EdgeInsets.only(left: 30.0, right:30.0, top: 130.0, bottom: 130.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                color: accentColor.withOpacity(0.8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello...', style: TextStyle(fontFamily: 'SegoeUI', fontSize: 20),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Register", style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 30, fontWeight: FontWeight.bold)),
                        IconButton(onPressed: (){}, icon: Image.asset('assets/images/close_icon.png')) ///close button
                      ],
                    ),
                    SizedBox(height: 20.0,)
                  ],
                ),
                Textfieldmain(label: 'Email Adsress', hinttext: 'info@example.com', colorhint: true,), ///email Textfield
                Textfieldmain(label: 'Username', hinttext: '@example', colorhint: false,),///username Textfield
                TextfieldWithSuffixIcon(label: 'Password', colorhint: false,), ///password Textfield
                TextfieldWithSuffixIcon(label: 'Confirm Password', colorhint: false,), ///Confirm password Textfield
                SizedBox(height: 15),
                Buttonmain(bgColor: primarycolor, borderRadius: 15, label: 'Register', labelColor: accentColor, margin: 13.0,command: (){Navigator.push(context, MaterialPageRoute(builder: (context){return homepage();},),);},), ///Register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have account?', style: TextStyle(fontSize: 15, fontFamily: 'SegoeUI', color: primarycolor)),
                    TextButton(child: Text('  Login', style: TextStyle(fontSize: 15, fontFamily: 'SegoeUI', color: Colors.red.shade600)), onPressed: (){}), ///register textButton
                  ],)
              ],
           ),
          ),
        ),
      ),
    );
  }
}