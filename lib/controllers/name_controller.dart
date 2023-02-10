import 'package:get/get.dart';

class NameController extends GetxController {
  //name of the user

  late final RxString _nickname = ''.obs;
  RxString get nickName => _nickname;

  late int _score = 0;
  int get numOfCorrectAns => _score;

  void reset() {
    _score = 0;
    _nickname.value = '';
  }

  void updateScore() {
    _score++;
  }

  void updateName(String newText) {
    _nickname.value = newText;
  }
}
