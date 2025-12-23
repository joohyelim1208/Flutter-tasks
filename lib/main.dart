import 'package:flutter/material.dart';
import 'package:flutter_tasks/page/home/home_page.dart';

//
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(title: "혜림`s Tasks"),

      // 필수조건. 테마를 적용해야 한다!
      // 테마 데이터 적용
      themeMode: ThemeMode.system,

      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        scaffoldBackgroundColor: Colors.grey[400],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[350],
          elevation: 0,
          // 값 더 줘야됨.
        ),
      ),
      darkTheme: ThemeData(colorScheme: ColorScheme.dark()),
    );
  }
}
