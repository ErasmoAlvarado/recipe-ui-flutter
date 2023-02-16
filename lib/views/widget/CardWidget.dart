import 'package:flutter/material.dart';
import 'package:recipe_ui_flutter/views/pages/CookPage.dart';

class CardWidget extends StatelessWidget {
  final double w,h,calories,food_weight;
  final String title,subtitle,url;
  const CardWidget({super.key,required this.url, required this.calories, required this.food_weight, required this.subtitle, required this.w, required this.h, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(118, 39, 39, 39),
        borderRadius: BorderRadius.circular(30)
        ),
        height: h,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return CookPage(
                    calories: calories,
                    food_weight: food_weight,
                     img: url,
                     title: title,
                  );
                },)
              );
            },
            splashColor: Colors.black87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                    Image.asset(url, height: w/1.5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                          children: [
                            Text('${food_weight}g',style: TextStyle(color: Colors.yellow[400],fontSize: w/14, fontWeight: FontWeight.w300),),
                            const SizedBox(width: 15),
                            Text('${calories}cal',style: TextStyle(color: Colors.yellow[400],fontSize: w/14, fontWeight: FontWeight.w300))
                          ],),
                          Text(title,style:TextStyle(fontSize: w/7,fontWeight: FontWeight.w400),),
                          Text(subtitle, style: TextStyle(color: Colors.white,fontSize: w/11, fontWeight: FontWeight.w200)),
                        ],
                      ),
                    ),
            
              ],
            ),
          ),
        ),
    );
  }
}