import 'package:flutter/material.dart';

// extends PreferredSizeWidget 쓰면 구현해줄게 많아진다
// 위젯으로 빼서 쓰려면 반드시 써야 된다!
class AppBarTitle extends StatelessWidget implements PreferredSizeWidget {
  const AppBarTitle({super.key, required this.title2});

  final String title2;

  @override
  // PreferredSizeWidget은 아래 부분이 없으면 작동을 안한다고 한다!!
  // size라는 클래스를 리턴하는 것. 높이를 설정해줘야 함. 48~60 사이 값을 보통 쓴다.
  Size get preferredSize => const Size.fromHeight(56);

  Widget build(BuildContext context) {
    return AppBar(
      // 클래스를 때로 빼야함
      title: Text(
        title2,
        style: TextStyle(
          // 필수.
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
