import 'package:get/get.dart';

class AuthController extends GetxController {
  // Using Rx<> for custom class reactivity
  final _user = RxString("");

  // Setters
  set userName(String name) {
    _user.value = name;
  }

  // Reactive Getters
  RxString get reactiveName => _user;

  // Getters
  String get name => _user.value;
}
