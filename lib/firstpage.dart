import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recop/loginpage.dart';
import 'package:recop/signuppage.dart';
import 'package:recop/theme.dart';
import 'package:recop/widgets.dart';
class firstpage extends StatelessWidget {
  const firstpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgFirstpage.png'), ///set bgImage
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset('assets/images/Reco_logo.png', width: 250), ///logo reco
              Text('Welcome', style: TextStyle(color: accentColor, fontFamily: 'Roboto', fontSize: 36),),
              SizedBox(height: 10),
              Text('Reco is the next gen movie\n recomendation system', style: TextStyle(color: Colors.white, fontFamily: 'SegoeUI'),textAlign: TextAlign.center),
              SizedBox(height: 30),
              Buttonmain(margin: 50.0, borderRadius: 40.0, bgColor: accentColor, label: 'Create Account', labelColor: primarycolor, command: (){Navigator.push(context, MaterialPageRoute(builder: (context){return signuppage();},),);},), ///createaccount button
              SizedBox(height: 20),
              Buttonmain(margin: 50.0, borderRadius: 40.0, bgColor: primarycolor, label: 'Login', labelColor: accentColor, Side: BorderSide(color: accentColor, width: 4), command: (){Navigator.push(context, MaterialPageRoute(builder: (context){return loginpage();},),);},),  ///login button
              Container(child: Row(children: [Expanded(child: Divider(color: Colors.white, thickness: 2,)), Text('OR', style: TextStyle(color: Colors.white, fontFamily: 'SegoeUI'),), Expanded(child: Divider(color: Colors.white, thickness: 2,))],), width: double.infinity, margin: EdgeInsets.only(left: 60.0, right: 60.0, top: 5, bottom: 5),), ///divider
              Buttonlogo(icon: Image.asset('assets/images/google_icon.png', scale: 20,), borderRadius: 40.0, bgColor: accentColor, label: 'Login With google', labelColor: primarycolor,), ///loginwithgoogle button
            ],
          ),
        ),
      ),
    );
  }
}




