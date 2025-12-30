import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountController extends GetxController {
  RxInt count = 0.obs;

  getData(String key) async {
    var pref = await SharedPreferences.getInstance();
    count.value = pref.getInt(key)!;
    update();
  }

  Future<void> saveData(String key) async {
    count.value = count.value + 1;
    var pref = await SharedPreferences.getInstance();
    pref.setInt(key, count.value);
    print('${count.value}');
    update();
  }
}
