import 'package:flutter/material.dart';

class DetailPageMin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("이지민"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "이지민",
              child: Image.asset('images/min.png', width: 150, height: 150),
            ),
            SizedBox(height: 20),
            Text(
              "이지민",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("ISTP"),
            Text("칼퇴 요정 뽀로로"),
          ],
        ),
      ),
    );
  }
}