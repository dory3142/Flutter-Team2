import 'package:flutter/material.dart';

class DetailPageHoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("김성훈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "김성훈",
              child: Image.asset('images/hoon.png', width: 150, height: 150),
            ),
            SizedBox(height: 20),
            Text(
              "김성훈",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("ISFP"),
            Text("알파남"),
          ],
        ),
      ),
    );
  }
}