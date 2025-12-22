import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget implements PreferredSizeWidget {
  const AppBarTitle({super.key, required this.title});

  final String title;

  @override
  // PreferredSizeWidget은 아래 부분이 없으면 작동을 안한다고 한다!!
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return AppBar(
      // 클래스를 때로 빼야함
      title: Text(
        title,
        style: TextStyle(
          // 필수.
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
