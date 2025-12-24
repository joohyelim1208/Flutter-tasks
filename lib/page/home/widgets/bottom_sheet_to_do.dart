import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tasks/page/home/widgets/toggle_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomSheetToDo extends StatelessWidget {
  const BottomSheetToDo({super.key, required this.plusbotton});

  final String plusbotton;

  // TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // 플로팅버튼 값
      child: Icon(Icons.add, color: Colors.white),
      backgroundColor: Colors.deepOrangeAccent[700],
      shape: CircleBorder(),
      // 버튼을 누르면 동작함
      // 버튼을 비활성화 하려면 삼항연산자를 사용하여 null을 할당
      onPressed: () {
        // ontroller: controller 오류나서 해결함. 처음에? null값이 있던걸 없애주었다.
        // 액션버튼 안에 텍스트필드 구성을 해놔서 안쪽으로 옮겼다.
        TextEditingController controller = TextEditingController();

        // 팝업창
        showModalBottomSheet(
          // 키보드 올라올 때 높이조절
          isScrollControlled: true,
          context: context,
          builder: (context) {
            // 리턴을 꼭 써줘야 함!!!
            return Padding(
              // 필수. 패딩값을 좌우상하 다 따로 줘야함.
              padding: EdgeInsets.only(
                left: 20,
                top: 12,
                right: 20,
                // EdgeInsets.only 앞에 const를 삭제해줬더니 동작된다.
                bottom: MediaQuery.of(context).viewInsets.bottom + 20,
              ),
              //
              child: Container(
                // 값을 줘야 버튼을 누르면 창이 올라옴!
                height: 100,
                child: Column(
                  children: [
                    // 자동으로 줄바꿈이 되도록
                    Expanded(
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        // 텍스트를 입력하려고 창을 터치하면 키보드가 자동으로 올라옴.
                        autofocus: true,
                        // 키보드의 줄바꿈 버튼을 완료 또는 확인 버튼으로 변경한다. // 줄바꿈(엔터) 대신 저장 saveTodo() 적용되도록 구현
                        keyboardType: TextInputType.multiline,
                        // 값을 받아서 터미널에서 출력됨
                        onSubmitted: (value) {
                          // 만약 텍스트가 비어있을 시 저장하지 않는다. 비어있는지 먼저 확인하고, 비어있으면 알림을 띄우거나 저장 중단
                          // trim()을 추가해 공백만 입력된 경우도 걸러낸다.
                          if (controller.text.trim().isEmpty) {
                            // 플러터 토스트!! 터미널에서 적용시켜서 패키지를 활용할 수도 있다!!!!!!!!
                            Fluttertoast.showToast(msg: '할 일을 입력해주세요.');
                            // 빈 값이면 저장하지 않고 되돌려보냄
                            return;
                          } else {
                            Fluttertoast.showToast(msg: 'save To Do');
                          }
                        },
                        maxLines: 3,

                        // 꾸미는 법! 텍스트 입력창 하단에 줄이 있는걸 없앰.
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '새 할 일',
                          hintStyle: TextStyle(color: Colors.black54),
                        ),
                        controller: controller,

                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    // 아이콘 상태변경 버튼 사용 클래스
                    ToggleIcons(controller: controller),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
