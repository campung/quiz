import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:homeplus/widgets/popup_form.dart';

class QuizForm extends StatefulWidget {
  final int quizNum;
  final Map quizInfoMap;
  final Function callback;

  const QuizForm({
    Key key,
    @required this.quizNum,
    @required this.quizInfoMap,
    @required this.callback,
  }) : super(key: key);

  @override
  _QuizFormState createState() => _QuizFormState();
}

class _QuizFormState extends State<QuizForm> {
  String currentChoice = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        Container(
          color: Colors.white,
          child: Text(
            "${widget.quizNum}",
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
        ),
        Spacer(),
        Container(
          color: Colors.white,
          child: Text(
            "${widget.quizInfoMap["question"]}",
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            choiceForm("O"),
            SizedBox(width: 20.sp),
            choiceForm("X"),
          ],
        ),
        Spacer(),
        InkWell(
          onTap: () {
            if (widget.quizInfoMap["solution"] != currentChoice) {
              Get.dialog(PopUpForm());
            } else {
              widget.callback();
            }
          },
          child: Container(
            color: Colors.white,
            child: Text(
              "다음",
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }

  InkWell choiceForm(String title) {
    return InkWell(
      onTap: () {
        setState(() {
          currentChoice = "$title";
        });
      },
      child: Container(
          color: currentChoice != title ? Colors.white : Colors.blue,
          padding: EdgeInsets.all(50.sp),
          child: Text(
            "$title",
            style: TextStyle(
              fontSize: 50.sp,
            ),
          )),
    );
  }
}
