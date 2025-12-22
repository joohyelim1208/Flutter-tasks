# flutter_tasks

1~3번 필수문제 홈페이지 부분
1. Scaffole구조 부터 시작해서
 Column 구조
2. AppBar 구현
 구조
 - Text (수강생 이름 들어가야 함)
3. body 구현
 구조
 - Container
   - Column
     - Icon
     - Text
     - Text
     - Text

 To Do 상세내역 화면 이름
 - ToDoDetailPage.dart 파일 별도로 생성

UI 디자인과 똑같이 구현해야 한다!!

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold구조 안에 앱 바, 바디 구성
    return Scaffold(
      // 도전. 테마데이터 scaffoldBackgroundColor로 지정해주기!
      backgroundColor: Colors.grey[400],
      // 앱 바 폴더를 따로 만들어서 이동시켜 줌
      appBar: homeAppBar(),
      // 리스트뷰는 스크롤 가능한 리스트 형태로 표시하는 기능
      body: ListView(
        children: [
          // 필수. padding적용하기
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    // 도전. 테마모드에 따라 컬러 바뀌게 적용하기
                    color: Colors.grey[200],
                    // 필수. 라운딩 적용하기
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                // 필수. 하단 Icon Class의 add icon사용
                // 필수. addTodo 함수 작성 및 위젝에 연결 해야됨
                SizedBox(
                  width: 20,
                  height: 20,
                  child: IconButton(
                    icon: Icon(Icons.add, size: 24, color: Colors.white),
                    color: Colors.deepOrangeAccent,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // 하단+아이콘
    );
    return MaterialApp(
      home: HomePage(),

      // 필수조건. 테마를 적용해야 한다!
      // 테마 데이터 적용
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
