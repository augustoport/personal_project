import 'package:flutter/material.dart';

import '../home/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Splash Page'),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('Home Page', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      );
    }
}