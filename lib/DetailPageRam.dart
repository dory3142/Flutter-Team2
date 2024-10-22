
import 'package:flutter/material.dart';

class DetailPageRam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("서예람"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "서예람",
              child: Image.asset('images/ram.png', width: 150, height: 150),
            ),
            SizedBox(height: 20),
            Text(
              "서예람",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("ENTP"),
            Text("불꽃 카리스마 팀장"),
          ],
        ),
      ),
    );
  }
}
