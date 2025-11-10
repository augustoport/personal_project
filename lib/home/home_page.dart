import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/home_bg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Text("AAAAAA", style: TextStyle(color: Colors.white)),
          Positioned(top: 50, left: 50, child: ButtonWidget(text: "text")),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const ButtonWidget({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.red.shade700,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
