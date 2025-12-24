import 'package:flutter/material.dart';
import 'package:flutter_tasks/page/home/widgets/bottom_sheet_to_do.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToggleIcons extends StatefulWidget {
  const ToggleIcons({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<ToggleIcons> createState() => _ToggleIconsState();
}

class _ToggleIconsState extends State<ToggleIcons> {
  // bool값을 이용해 텍스트 유무 상태에 따라 아이콘이 변화하게 만들기
  // 버튼 개수만큼 초기화 됨. 상태를 저장할 리스트 변수
  late List<bool> _isSelected;
  bool _isTextEmpty = true;

  // 메서드 생성
  @override
  void initState() {
    super.initState();
    _isSelected = [false, false, false];
    // 컨트롤러로 글자여부를 확인해서 저장버튼 스타일을 변경한다.
    widget.controller.addListener(() {
      if (mounted) {
        setState(() {
          _isTextEmpty = widget.controller.text.isEmpty;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ToggleButtons(
          // 배경색, 테두리 없애기!!
          fillColor: Colors.transparent,
          renderBorder: false,
          // isSelected: bool타입의 데이터 리스트이다.
          isSelected: _isSelected,
          // 각각 토글되어야 함
          onPressed: (int index) {
            // for문을 사용해야 각각 버튼을 사용 가능하다
            setState(() {
              for (var i = 0; i < _isSelected.length; i++) {
                if (i == index) {
                  // 텍스트가 아무것도 없다면 다시 되돌린다. 인덱스는 0,1,2
                  if (index == 2 && _isTextEmpty) return;
                  // 특정 인덱스의 선택상태를 반전시키는 기능이다.
                  _isSelected[i] = !_isSelected[i];
                }
              }
              // 저장
              if (index == 2 && _isTextEmpty) {
                // 팝업창 닫는 기능
                Navigator.pop(context);
              }
            });
          },

          children: [
            Icon(Icons.short_text_rounded, size: 24),

            // 별모양 아이콘 상태에 따라 변경
            Icon(_isSelected[1] ? Icons.star : Icons.star_border, size: 24),

            Spacer(),

            // 저장 글자
            Text(
              '저장',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                // 텍스트가 있으면 컬러가 변함. 저장이 가능한지 사용자가 알 수 있게 됨!
                color: _isTextEmpty
                    ? Colors.black45
                    : Colors.deepOrangeAccent[700],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
