import 'package:flutter/material.dart';
import 'package:recop/firstpage.dart';
void main() => runApp(const Reco());


class Reco extends StatelessWidget {
  const Reco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFF223B3A),
        appBarTheme: AppBarTheme(color: Color(0xFF191616)),
        bottomAppBarTheme: BottomAppBarTheme(color: Color(0xFF1A1616)),
        accentColor: Color(0xFF00FFCB)
      ),
        home:  firstpage(),
    );
  }
}

