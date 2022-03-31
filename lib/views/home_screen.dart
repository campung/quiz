import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:homeplus/views/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        color: Colors.amber,
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            Get.to(() => QuizScreen(), routeName: '/quiz');
          },
          child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 14.sp,
                horizontal: 60.sp,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50.sp),
              ),
              child: Text(
                "시작하기",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp),
              )),
        ),
      ),
    );
  }
}
