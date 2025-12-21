import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return AppBar(
      // ! 이름 부분은 사용자가 입력하는 값에 맞춰서 변경이 되어야 한다.
      title: ("혜림's Task", TextStyle()),
    );
  }
}
