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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Image.network(
          "https://wallpapercave.com/wp/wp3831632.jpg",
          fit: BoxFit.cover,
          height: 35,
        ),
      ),
    );
  }
}