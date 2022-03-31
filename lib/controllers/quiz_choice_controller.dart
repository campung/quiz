import 'package:get/get.dart';

class QuizChoicesController extends GetxController {
  var choices = [].obs;

  initChoices(int _length) {
    int i = 0;
    List _choices = [];
    while (i == _length) {
      _choices.add("");
    }
    choices.value = _choices;
  }

  changeChoice(
    String _choice,
    int _index,
  ) {
    List _choices = choices;
    _choices[_index] = _choice;
    choices.value = _choices;
  }

  deleteChoice(int _index) {
    List _choices = choices;
    _choices[_index] = "";
    choices.value = _choices;
  }
}
