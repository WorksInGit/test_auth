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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('HomePage', style: TextStyle(color: Colors.white),),
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to home page !',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            
          ],
        ),
      ),
    );
  }
}
