import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizDoneForm extends StatelessWidget {
  const QuizDoneForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200.sp,
      child: Column(
        children: [
          Text(
            "O/X 퀴즈 완료",
            style: TextStyle(
              fontSize: 50.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          InkWell(
              child: Text(
            "상품 받기",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
      ),
    );
  }
}
