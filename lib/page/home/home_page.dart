import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    // Scaffold구조 안에 앱 바, 바디 구성
    return Scaffold(
      appBar: homeAppBar(),
      body: ListView(children: [
          
        ],
      ),
    );
  }
}

// 앱 바 필수 구현 완료
AppBar homeAppBar() {
  return AppBar(
    title: Text(
      // 필수. 수강생 이름 넣기
      "혜림`s Tasks",
      style: TextStyle(
        // 필수. 사이즈와 볼드체 적용
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
