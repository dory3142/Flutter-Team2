import 'package:flutter/material.dart';
import 'DetailPageRam2.dart';
import 'finalpage.dart';
import 'package:just_audio/just_audio.dart'; // just_audio 패키지 임포트
import 'dart:async';

class DetailPageRam extends StatefulWidget {
  @override
  _DetailPageRamState createState() => _DetailPageRamState();
}

class _DetailPageRamState extends State<DetailPageRam> {
  final AudioPlayer _audioPlayer = AudioPlayer(); // 오디오 플레이어 인스턴스 생성

  @override
  void initState() {
    super.initState();
    // 화면에 진입한 후 1초 뒤에 음성 파일 재생
    _playSound();
  }

  // 음성 파일 재생 함수
  void _playSound() async {
    try {
      await _audioPlayer.setAsset('sounds/Ram.mp3'); // 음성 파일 경로 설정
      _audioPlayer.play(); // 음성 파일 재생
    } catch (e) {
      print("오디오 파일 재생 중 에러 발생: $e");
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose(); // 화면이 닫힐 때 오디오 플레이어 해제
    super.dispose();
  }

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
            mainAxisAlignment: MainAxisAlignment.start, // 위쪽으로 정렬
            children: [
              Hero(
                tag: "서예람",
                child: Image.asset('images/ram_morning.png',
                    width: 368, height: 376),
              ),
              SizedBox(height: 10), // 간격 조정
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "# ENTP # 불꽃 카리스마 팀장🔥",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Pretendard",
                              color: Color(0xFFDA9500)),
                        ),
                      ),
                      SizedBox(height: 10), // 간격 조정
                      Text(
                        "- 쾌활한 성격이며, 농담을 즐겨한다",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- 미래, 과거보단 현재에 충실한 편이다",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- 괴로움은 잠시 금세 즐거워진다",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- 한자리에 머무르는 것은 지루하다",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "🌙  필요 수면 시간 : 10시간",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // 재우기 버튼
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPageRam2(),
                    ),
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
                  "재우기 Zz...",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: "HS유지체",
                    color: Colors.black,
                  ),
                ),
              ),
              // 집 보내기 버튼
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FinalPage()), // FinalPage로 이동
                  );
                },
                child: Text(
                  "집 보내기 =33",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pretendard",
                    color: Color(0xFF818181),
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
