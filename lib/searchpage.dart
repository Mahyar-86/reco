import 'package:flutter/material.dart';
import 'package:recop/theme.dart';


class searchpage extends StatelessWidget {
  const searchpage({Key? key}) : super(key: key);
  void updatelist(String value){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
      ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Search for movie", style: TextStyle(color: Colors.white, fontFamily: "Roboto", fontSize: 30.0, fontWeight: FontWeight.w600),),
              SizedBox(height: 20.0,),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: lightcolor,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide.none),
                    hintStyle: TextStyle(color: accentColor),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search, color: accentColor, size: 30.0,),
                    prefixIconColor: Colors.purple.shade900,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(),
              ),
            ],
          ),
        ),
    );
  }
}
