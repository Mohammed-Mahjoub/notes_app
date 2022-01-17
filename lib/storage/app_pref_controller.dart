
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefController{
  static final AppPrefController _instance = AppPrefController._internal();
  late SharedPreferences _sharedPreferences;
  factory AppPrefController(){
    return _instance;
  }
  AppPrefController._internal();

  Future<void> initAppPrefController() async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }

}