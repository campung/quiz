import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:homeplus/views/home_screen.dart';
import 'package:homeplus/views/quiz_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      builder: (context, child) {
        return MediaQuery(
          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      debugShowCheckedModeBanner: false,
      // home: MyApp(),
      // theme: ThemeData(
      //   primaryColor: Colors.white,
      //   primarySwatch: Colors.amber,
      //   textSelectionTheme: TextSelectionThemeData(cursorColor: colorBrand),
      // ),
      title: "SKC O/X Quiz Event",
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/home': (context) => HomeScreen(),
        '/quiz': (context) => QuizScreen(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        // designSize: Size(360, 690),
        builder: () => HomeScreen()
        // FutureBuilder(
        //       future: Future.delayed(Duration(seconds: 0)),
        //       builder: (context, snapshot) {
        //         // if (snapshot.connectionState == ConnectionState.done) {
        //         return ScreenFilter();
        //         // } else {
        //         //   return Splash();
        //         // }
        //       },
        // )
        );
  }
}

class ScreenFilter extends StatefulWidget {
  const ScreenFilter({
    Key key,
  }) : super(key: key);

  @override
  _ScreenFilterState createState() => _ScreenFilterState();
}

class _ScreenFilterState extends State<ScreenFilter> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
    // : Splash();
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
          // width: ScreenUtil().screenWidth,
          // height: ScreenUtil().screenHeight,
          // color: color_campung,
          // child: Center(
          //   child: SvgPicture.asset(
          //     "assets/images/campung-logo.svg",
          //     color: Colors.white,
          //     width: 64.sp,
          //     height: 64.sp,
          //   ),
          // ),
          ),
    );
  }
}
