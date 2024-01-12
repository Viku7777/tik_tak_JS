import 'package:get/get.dart';

class CountController extends GetxController {
  int _count = 1;
  int get count => _count;
  updatecount({List<Object>? ids}) {
    _count++;
    print(_count);
    update(ids);
  }
}
