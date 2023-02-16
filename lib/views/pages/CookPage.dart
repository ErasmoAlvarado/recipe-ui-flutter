import 'package:flutter/material.dart';
import 'package:recipe_ui_flutter/views/widget/AppButton.dart';
import 'package:recipe_ui_flutter/views/widget/textColumn.dart';

class CookPage extends StatelessWidget {
  final String img,title;
  final double food_weight,calories;
  const CookPage({super.key, required this.calories, required this.food_weight, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {
            print('link');
          }, icon: const Icon(Icons.favorite), splashRadius: 25,)
        ],
        centerTitle: true,
        title: Text(title),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
          splashRadius: 25,
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset(img, height: MediaQuery.of(context).size.width/1.3),
            const SizedBox(height: 20,),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color:const Color.fromARGB(76, 63, 63, 63),width: 3)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textColumn(title: calories.toString(), subtitle: 'kcal'),
                    textColumn(title: food_weight.toString(), subtitle: 'gram'),
                    textColumn(title: '25', subtitle: 'min'),
                    textColumn(title: '1', subtitle: 'serve')
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40,),
            AppButton(h: 60, w: MediaQuery.of(context).size.height/2, color:const Color.fromARGB(255, 160, 199, 129),title: 'cookings steps',),
            const SizedBox(height: 20,),
            const Text('about this recipe', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            const SizedBox(height: 10),
            const Text('try to make this awesome food'),
          ],
        ),
      ),
    );
  }
}