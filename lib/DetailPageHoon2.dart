import 'package:flutter/material.dart';
import 'DetailPageHoon.dart';
import 'finalpage.dart';
import 'dart:async';

class DetailPageHoon2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // 기본 AppBar 높이
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF102E3A), // 시작 색상
                Color(0xFF102E3A), // 끝 색상
              ],
              begin: Alignment.topCenter, // 그라데이션 시작 위치
              end: Alignment.bottomCenter, // 그라데이션 끝 위치
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent, // 투명하게 설정
            elevation: 0, // 그림자 제거
          ),
        ),
      ),
      body: Container(
        // 배경 그라데이션
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF102E3A), // 시작 색상
              Color(0xFFFFFAF1), // 끝 색상
            ],
            begin: Alignment.topCenter, // 그라데이션 시작 위치
            end: Alignment.bottomCenter, // 그라데이션 끝 위치
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // 위쪽으로 정렬
            children: [
              Hero(
                tag: "김성훈",
                child: Image.asset('images/hoon_night.png',
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
                          "# ISFP # 출결담당 너구리🦝",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Pretendard",
                              color: Color(0xFFDA9500)),
                        ),
                      ),
                      SizedBox(height: 10), // 간격 조정
                      Text(
                        "- 선과 악이 명확히 확립되어 있다",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- 대의명분이 있다면 헌신하는 편이다",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- 쉽게 지루함을 느낀다",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- 미루다 발등에 불이 떨어져야 한다",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pretendard",
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "🌙  필요 수면 시간 : 14시간",
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
              // 깨우기 버튼
              // **변경된 깨우기 버튼 부분**
              GaugeButton(), // 여기에 GaugeButton 추가

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


class GaugeButton extends StatefulWidget {
  @override
  _GaugeButtonState createState() => _GaugeButtonState();
}

class _GaugeButtonState extends State<GaugeButton> {
  double _gaugeValue = 0.0; // 게이지 값 (0.0 ~ 1.0)
  Timer? _timer; // 타이머 객체
  final double _incrementValue = 0.1; // 버튼 클릭 시 증가할 값
  final double _decrementValue = 0.02; // 감소하는 값
  final Duration _decreaseInterval = Duration(milliseconds: 100); // 감소 간격
  bool _canReset = false; // 버튼이 게이지를 초기화할 수 있는지 여부를 결정하는 변수

  @override
  void initState() {
    super.initState();
    _startDecreasing(); // 초기화 시 감소 시작
  }

  @override
  void dispose() {
    _timer?.cancel(); // 위젯이 사라질 때 타이머 취소
    super.dispose();
  }

  // 게이지 감소를 위한 타이머 시작
  void _startDecreasing() {
    _timer = Timer.periodic(_decreaseInterval, (timer) {
      if (_gaugeValue > 0 && _gaugeValue < 1.0) {
        setState(() {
          _gaugeValue = (_gaugeValue - _decrementValue).clamp(0.0, 1.0);
        });
      } else if (_gaugeValue == 1.0) {
        _timer?.cancel(); // 게이지가 1.0에 도달하면 타이머 멈춤

        // **게이지가 1.0일 때 DetailPageRam으로 자동 이동하는 코드 추가**
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            _canReset = true; // 1초 후 버튼을 누르면 리셋할 수 있게 설정
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPageHoon()), // DetailPageRam으로 이동
          );
        });
      }
    });
  }

  // 버튼 클릭 시 게이지 증가 또는 리셋
  void _onButtonClick() {
    if (_gaugeValue < 1.0) {
      // 게이지를 증가시킴
      setState(() {
        _gaugeValue = (_gaugeValue + _incrementValue).clamp(0.0, 1.0);
      });
    } else if (_canReset) {
      // 게이지를 리셋
      _resetGauge();
    }
  }

  // 게이지 리셋
  void _resetGauge() {
    setState(() {
      _gaugeValue = 0.0; // 게이지를 0으로 초기화
      _canReset = false; // 리셋 후 다시 증가할 수 있도록 상태 변경
      _startDecreasing(); // 다시 게이지가 줄어들도록 타이머 시작
    });
  }

  // 문구 생성: 게이지에 따라 "일어나!" 뒤에 느낌표 추가
  String _getGaugeText() {
    if (_gaugeValue == 1.0) {
      return '재우기...Zzz'; // 100%일 때 문구
    } else {
      int exclamationCount = (_gaugeValue * 5).toInt(); // 20%마다 느낌표 하나 추가
      return '깨우기!${'!' * exclamationCount}'; // 문구에 느낌표 추가
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end, // 버튼을 아래쪽에 위치
      children: [
        Align(
          alignment: Alignment.bottomCenter, // 버튼을 아래쪽 센터에 위치
          child: GestureDetector(
            onTap: _onButtonClick, // 게이지 증가 또는 리셋
            child: Stack(
              children: [
                // 게이지가 차오르는 애니메이션
                Container(
                  width: 400, // 버튼과 게이지 너비
                  height: 73, // 버튼과 게이지 높이
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.lerp(Colors.pinkAccent, Colors.white, 0.5), // 버튼의 기본 배경색
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // 버튼의 둥근 모서리에 맞춘다.
                    child: Stack(
                      children: [
                        // 게이지 애니메이션
                        AnimatedContainer(
                          duration: Duration(milliseconds: 100),
                          width: 400 * _gaugeValue, // 게이지 값에 따른 너비 설정
                          height: 73, // 버튼 높이에 맞춤
                          color: Color.lerp(Colors.yellow, Colors.white, 0.5), // 게이지 색상
                        ),
                        // 버튼 텍스트
                        Center(
                          child: Text(
                            _getGaugeText(), // 문구 출력
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: "HS유지체",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



