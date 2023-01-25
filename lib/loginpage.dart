import 'package:flutter/material.dart';
import 'package:recop/theme.dart';
import 'package:recop/widgets.dart';
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgLoginpage.png'), ///set bgImage
            fit: BoxFit.fitWidth,
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
                    Text('Welcome Back!!!', style: TextStyle(fontFamily: 'SegoeUI', fontSize: 20),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Login", style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 30, fontWeight: FontWeight.bold)),
                        IconButton(onPressed: (){}, icon: Image.asset('assets/images/close_icon.png')) ///close button
                      ],
                    ),
                    SizedBox(height: 20.0,)
                  ],
                ),
                Textfieldmain(label: 'username/email', hinttext: 'info@example.com', colorhint: true,), ///username/email Textfield
                TextfieldWithSuffixIcon(hinttext: 'password', colorhint: false,), ///password Textfield
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: primarycolor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {isChecked = value!;});},
                        ),///rememberme Checkbox

                        Text('Remember me', style: TextStyle(fontSize: 12, fontFamily: 'SegoeUI', color: primarycolor),),
                      ],
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: TextButton(child: Text('Forgot Password?', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontFamily: 'SegoeUI', color: primarycolor),), onPressed: (){},), ///forgot password textButton
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Buttonmain(bgColor: primarycolor, borderRadius: 15, label: 'Login', labelColor: accentColor, margin: 13.0), ///Login button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Do you have an account?', style: TextStyle(fontSize: 15, fontFamily: 'SegoeUI', color: primarycolor)),
                    TextButton(child: Text('  Register', style: TextStyle(fontSize: 15, fontFamily: 'SegoeUI', color: Colors.red.shade600)), onPressed: (){}), ///register textButton
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}