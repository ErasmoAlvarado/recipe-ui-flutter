import 'package:flutter/material.dart';
import 'package:recipe_ui_flutter/views/widget/AppWrap.dart';
import 'package:recipe_ui_flutter/config/globlal.dart';
import 'package:recipe_ui_flutter/views/widget/CardWidget.dart';
import 'package:recipe_ui_flutter/views/widget/ImageButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            // this is the appbar
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  const [
                        Text('Hello', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                        Text('Guess 👋', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
                      ],
                    ),
                    const SizedBox(width: 100),
                    Image.asset('assets/profile.png' , height: 70,)
                  ],
                ),
              )
            ),

            //chipsList
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppWrap(title: wrapImages[0]['title'], url: wrapImages[0]['url'],size:MediaQuery.of(context).size.width/14),
                  AppWrap(title: wrapImages[1]['title'], url: wrapImages[1]['url'],size:MediaQuery.of(context).size.width/14),
                  AppWrap(title: wrapImages[2]['title'], url: wrapImages[2]['url'],size:MediaQuery.of(context).size.width/14),
                ],
              )
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("popular", style: TextStyle(fontWeight: FontWeight.w800 , fontSize: 30),),
                    ImageButton(url: "assets/filter.png", h: 35)
                  ],
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardWidget(
                      url: 'assets/cook${index+1}.png',
                      calories: 500,
                      food_weight: 500,
                      subtitle: 'eat is so cool dude', 
                      w: 150,
                      h: 160,
                      title: 'tastay food${index+1}'
                      ),
                  );
                  },
                  childCount: 16
                )
              )
          ],
        ),  
      ),

      
    );
  }
}