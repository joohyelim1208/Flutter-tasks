import 'package:flutter/material.dart';
import 'package:flutter_tasks/page/app_bar_title.dart';

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
      home: HomePage(),

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

// 사용자가 터치할 수 있는 StatefulWidget
class HomePage extends StatelessWidget {
  // title 파라미터
  final String myTitle = "혜림`s Tasks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTitle(title: myTitle),
      // 필수. ListView 스크롤 기능!
      body: ListView(
        children: [
          // 필수. margin여백이 바깥쪽, padding여백이 안쪽 값 꼭 들어가야 함
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              children: [
                // 필수. 원하는 이미지 추가
                Image.asset('assets/images/note.webp', width: 100, height: 100),
                SizedBox(height: 18), // 간격 12로 줘야하는데 UI랑 달라서 살짝 수정함.
                Text(
                  '아직 할 일이 없음',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 12),
                // 2줄로 나뉨.
                Text(
                  //
                  "할 일을 추가하고 $myTitle에서 \n할 일을 추적하세요.",
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
      // 플로팅 액션버튼- 위젯 중에 하나
      floatingActionButton: FloatingActionButton(
        // 버튼을 누르면 동작함
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.deepOrangeAccent[700],
        shape: CircleBorder(),
      ),
    );
  }
}
