import 'package:flutter/material.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key, required this.title3});

  final String title3;

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                // homePage에서 파일 분리 전에는 $widget.title -> ${AppBarTitle(title2: widgets)}
                "할 일을 추가하고 $title3에서 \n할 일을 추적하세요.",
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
    );
  }
}
