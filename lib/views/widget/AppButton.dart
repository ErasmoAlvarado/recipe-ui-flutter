import 'package:flutter/material.dart';
import 'package:recipe_ui_flutter/views/pages/HomePage.dart';

class AppButton extends StatelessWidget {
  final double w,h;
  final Color color;
  final String title;
  const AppButton({super.key,required this.h, required this.w, this.title='',this.color = Colors.green});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: w,
    height: h,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePage())
          );
        },
        splashColor: const Color.fromARGB(92, 0, 0, 0),
        child: Center(child: Text(title,style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)))),
  );
  }
}