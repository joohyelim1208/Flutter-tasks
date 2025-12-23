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

투두 상세화면 페이지는 파일 따로 파서
별도 스캐폴드 만들고 별도의 앱바 만들고
홈화면 앱바랑 다르다!
actions 쪽에 즐겨찾기 넣으면 되고
leading 앞쪽 리딩

뒤로가기 버튼

1. main파일에서 homePage()클래스와 테마를 받아줌
homePage는 appbar와 body영역에 대한 정보가 있음
플로팅버튼도 클래스 별도로 만들어서 적용시켜주기.

appBar: AppBarTitle(title2: widget.title),
2. appBar영역을 클래스를 만들어줌. title2에 대한 높이값, 텍스트 스타일 등 정보 
똑같이 'title'이라고 변수명을 만들어줘도 상관은 없지만 어디서 넘어온건지 헷갈리니까 이름을 바꿔줌


3. homePage파일에서 appBar를 출력할 때 title2를 받아와서 입력을 해주고, 홈페이지에서 출력을 해줘야 되니까.
title을 출력하고 싶으면 statefulWiget이기 때문에 widget.title 이라고 붙여서 출력해줌

4. main에서 출력하고 싶은 title의 내용을 입력해줌
main파일에서 home: HomePage(title: "혜림`s Tasks"),

정리하자면,
main에서는 MaterialApp안에 각 page영역을 가져오고,
home Page 안에는 Scaffold 구조 안에 appBar와 body, bottom 영역이 담겨있고,
각 appbar 등 구조가 복잡해지는걸 Class를 구성해서 별도의 파일로 빼준 뒤,
home page안으로 가져와서 구조를 만든걸 담아주고,
main에서는 완성된 구조에서 출력만 하면 되는 것. title 부분에 들어가는 text를 적어준다던지..