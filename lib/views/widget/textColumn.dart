import 'package:flutter/material.dart';

Widget textColumn({required String title, required String subtitle}){
  return Column(
    children: [
      Text(title,
        style: TextStyle(
        fontSize: 15,
        color: Colors.green[400],
        fontWeight: FontWeight.bold
        ),
      ),
      const SizedBox(height: 5,),
      Text(subtitle)],);
}