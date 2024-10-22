import 'package:flutter/material.dart';

class DetailPageHyeon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("양현"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "양현",
              child: Image.asset('images/hyeon.png', width: 150, height: 150),
            ),
            SizedBox(height: 20),
            Text(
              "양현",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("ISFP"),
            Text("기술담당 인도인"),
          ],
        ),
      ),
    );
  }
}
