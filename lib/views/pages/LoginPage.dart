import 'package:flutter/material.dart';
import 'package:recipe_ui_flutter/views/widget/AppButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            SizedBox(height:MediaQuery.of(context).size.height/12),
            Image.asset('assets/cook3.png' ,height: MediaQuery.of(context).size.height/1.9,),
            SizedBox(height: MediaQuery.of(context).size.height/20,),
            Column(
              children: [
                const Text('Find the perfect',style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('recipes',style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800)),
                    const Text(' '),
                    Text('everyday',style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800, color: Colors.green[400]))
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('more than 20 thousand recipe'),
                    Text('of healthy and healthy food')
                  ],
                ),
                const SizedBox(height: 30),
                AppButton(
                  title: 'Get Started',
                  h: 60,
                  w:MediaQuery.of(context).size.width/1.15,
                  color: const Color.fromARGB(255, 160, 199, 129)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}