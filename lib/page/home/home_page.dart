// 사용자가 터치할 수 있는 StatefulWidget
import 'package:flutter/material.dart';
import 'package:flutter_tasks/page/home/widgets/app_bar_title.dart';
import 'package:flutter_tasks/page/home/widgets/task_list_view.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTitle(title2: widget.title),
      // 필수. ListView 스크롤 기능!
      body: TaskListView(title3: widget.title),
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
