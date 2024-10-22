import 'package:flutter/material.dart';

class DetailPageYeon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("김서연"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "김서연",
              child: Image.asset('images/yeon.png', width: 150, height: 150),
            ),
            SizedBox(height: 20),
            Text(
              "김서연",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("ISTJ"),
            Text("벌레 단속 세스코"),
          ],
        ),
      ),
    );
  }
}