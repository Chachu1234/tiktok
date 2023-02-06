import 'package:shared_preferences/shared_preferences.dart';

class Commonfun {
  Future<bool?> checkuserlooged() async {
     final prefs = await SharedPreferences.getInstance();
     final bool? result = prefs.getBool('islogged');
     return result;
  }
}
