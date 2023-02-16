import 'package:flutter/material.dart';

class AppWrap extends StatelessWidget {
  final String title,url;
  final double size;
  const AppWrap({super.key, required this.title, required this.url, required this.size});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Chip(
        backgroundColor: Colors.black,
        side: const BorderSide(color: Color.fromARGB(193, 65, 65, 65), width: 3.5),
        label:Row(
            children: [
              Image.asset(url, height: size),
              const SizedBox(width: 7,),
              Text(title, style:TextStyle(fontSize:size/2, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
    );
  }
}