import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF3FCFF),
                Color(0xFFFFFAF1),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 90,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  // Team image
                  Image.asset('images/balloon.png'),
                  SizedBox(height: 16),
                  // Team name
                  Text(
                    "이불 밖은 위험해!",
                    style: TextStyle(
                      fontFamily: "HS유지체",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),

                  // 박스 안에 팀원 소개를 포함
                  Container(
                    width: 480,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          MemberRow(
                            imagePath: 'images/ram.png',
                            name: "서예람",
                            mbti: "ENTP",
                            role: "불꽃 카리스마 팀장",
                            isImageFirst: true,
                          ),
                          MemberRow(
                            imagePath: 'images/yeon.png',
                            name: "김서연",
                            mbti: "ISTJ",
                            role: "벌레 단속 세스코",
                            isImageFirst: false,
                          ),
                          MemberRow(
                            imagePath: 'images/min.png',
                            name: "이지민",
                            mbti: "ISTP",
                            role: "칼퇴 요정 뽀로로",
                            isImageFirst: true,
                          ),
                          MemberRow(
                            imagePath: 'images/hoon.png',
                            name: "김성훈",
                            mbti: "ISFP",
                            role: "출결 담당 너구리",
                            isImageFirst: false,
                          ),
                          MemberRow(
                            imagePath: 'images/hyeon.png',
                            name: "양현",
                            mbti: "ISFP",
                            role: "기술 담당 인도인",
                            isImageFirst: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget for displaying a member's information in a row
class MemberRow extends StatelessWidget {
  final String imagePath;
  final String name;
  final String mbti;
  final String role;
  final bool isImageFirst;

  const MemberRow({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.mbti,
    required this.role,
    required this.isImageFirst,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: isImageFirst
            ? [
          Image.asset(
            imagePath,
          ),
          SizedBox(width: 20),
          MemberInfo(name: name, mbti: mbti, role: role),
        ]
            : [
          MemberInfo(name: name, mbti: mbti, role: role),
          SizedBox(width: 20),
          Image.asset(
            imagePath,
          ),
        ],
      ),
    );
  }
}

// Widget for displaying a member's name, MBTI, and role
class MemberInfo extends StatelessWidget {
  final String name;
  final String mbti;
  final String role;

  const MemberInfo({
    Key? key,
    required this.name,
    required this.mbti,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontFamily: "Pretandard",
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "$mbti\n$role",
          style: TextStyle(
            fontFamily: "Pretandard",
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
