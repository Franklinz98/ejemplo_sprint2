import 'package:get/get.dart';

class DataController extends GetxController {
  // Using Rx<> for custom class reactivity
  final _data = Rx<List<String>>([]);
  final _selected = RxString("");

  // Setters
  set addItem(String item) {
    _data.value.add(item);
    _data.refresh();
  }

  set select(int index) {
    _selected.value = data[index];
  }

  deleteItem(int item) {
    _data.value.removeAt(item);
    _data.refresh();
  }

  // Reactive Getters
  Rx<List<String>> get reactiveData => _data;
  RxString get reactiveSelected => _selected;

  // Getters
  List<String> get data => _data.value;
  String get selected => _selected.value;
}
