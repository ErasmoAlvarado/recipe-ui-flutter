

import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String url;
  final double h;
  const ImageButton({super.key, required this.url, required this.h});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.black38,
        borderRadius: BorderRadius.circular(50),
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(url,height: h),
        ),
      ),
    );
  }
}