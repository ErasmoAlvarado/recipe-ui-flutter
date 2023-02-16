import 'package:flutter/material.dart';
import 'package:recipe_ui_flutter/views/pages/LoginPage.dart';
import 'config/myTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: myTheme.darkTheme,
      home: const LoginPage(),
    );
  }
}