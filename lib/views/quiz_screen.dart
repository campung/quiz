import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homeplus/widgets/quiz_done_form.dart';
import 'package:homeplus/widgets/quiz_form.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuiz = 1;
  List quizzes = [
    {
      "question": "플라스틱은 분리수거 할 필요가 없다.",
      "solution": "X",
    },
    {
      "question": "플라스틱은 종류가 여러가지이다.",
      "solution": "O",
    },
    {
      "question": "플라스틱은 재활용이 불가능하다.",
      "solution": "X",
    }
  ];

  callback() {
    setState(() {
      currentQuiz = currentQuiz + 1;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: Container(
            color: Colors.amber,
            width: 500.sp,
            height: 1.sh,
            alignment: Alignment.center,
            child: quizzes.length >= currentQuiz
                ? QuizForm(
                    quizNum: currentQuiz,
                    quizInfoMap: quizzes[currentQuiz - 1],
                    callback: () => callback())
                : QuizDoneForm()),
      ),
    );
  }
}
