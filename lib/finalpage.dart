import 'package:flutter/material.dart';
import 'main.dart';

class FinalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF3FCFF),
      ),
      body: Container(
        // 배경 그라데이션
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF3FCFF), // 시작 색상
              Color(0xFFFFFAF1), // 끝 색상
            ],
            begin: Alignment.topLeft, // 그라데이션 시작 위치
            end: Alignment.bottomRight, // 그라데이션 끝 위치
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 위쪽으로 정렬
            children: [
              Image.asset('images/missbed.png', width: 368, height: 376),
              SizedBox(height: 10), // 간격 조정
              SizedBox(height: 20),
              // 재우기 버튼
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()), // main.dart의 MyApp 클래스
                        (route) => false, // 모든 이전 페이지 제거
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFECB4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // 모서리 둥글게
                  ),
                  minimumSize: Size(400, 73),
                ),
                child: Text(
                  "집에 가쟈 ㅋㅋ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: "HS유지체",
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
