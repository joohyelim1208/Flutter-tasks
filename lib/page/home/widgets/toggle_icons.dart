import 'package:flutter/material.dart';

class ToggleIcons extends StatefulWidget {
  const ToggleIcons({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<ToggleIcons> createState() => _ToggleIconsState();
}

class _ToggleIconsState extends State<ToggleIcons> {
  int _counter = 0;

  // 텍스트가 실시간 비어있는지 확인
  bool get _isTextEmpty => widget.controller.text.isNotEmpty;

  get _isSelected => widget.controller.text.isNotEmpty;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  // 기초 로직: GestureDetector의 onTap: () {}을 사용하여 데이터를 변경하고,
  // setState(() {});로 UI를 갱신하는 구현방법.

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          // onTap. 비동기 처리와 셋스테이트로 갱신
          onTap: () {
            _incrementCounter();
            print("버튼 터치 됨: $_counter");
          },

          child: Icon(Icons.short_text_rounded, size: 24),
        ),

        SizedBox(width: 20),

        GestureDetector(
          onTap: () {
            _incrementCounter();
            print("버튼 터치 됨: $_counter");
          },
          child: Icon(Icons.star_border, size: 24),
        ),

        Spacer(),

        GestureDetector(
          onTap: _isTextEmpty
              ? () {
                  debugPrint("저장중");
                  _incrementCounter();
                  print("버튼 터치 됨: $_counter");
                }
              : null,
          child: Text(
            "저장",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              // 텍스트가 있으면 컬러가 변함. 저장이 가능한지 사용자가 알 수 있게 됨!
              color: _isTextEmpty
                  ? Colors.black45
                  : Colors.deepOrangeAccent[700],
            ),
          ),
        ),
      ],
    );
  }
}
