import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PopUpForm extends StatelessWidget {
  const PopUpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: 300.sp,
              height: 140.sp,
              alignment: Alignment.center,
              child: Text("틀렸습니다.\n다시 풀어보세요"),
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                color: Colors.grey,
                width: 300.sp,
                height: 50.sp,
                alignment: Alignment.center,
                child: Text("확인"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
