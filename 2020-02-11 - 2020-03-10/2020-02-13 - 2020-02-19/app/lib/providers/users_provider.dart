import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
// import 'package:flutter_app_v1/models/users_model.dart';

class UsersProvider with ChangeNotifier {
  String _usersImage = '';
  String _usersName = '';
  String _usersEmail = '';
  String _usersPhone = '';
  String _usersBio = '';

  UsersProvider() {
    _load();
  }

  Future _load() async {
    String jsonString = await rootBundle.loadString("assets/data.json");
    final jsonData = json.decode(jsonString);
    return jsonData;
  }

  String get userImage => _usersImage;
  set userImage(String value) {
    _usersImage = value;
    notifyListeners();
  }

  String get userName => _usersName;
  set userName(String value) {
    _usersName = value;
    notifyListeners();
  }

  String get userEmail => _usersEmail;
  set userEmail(String value) {
    _usersEmail = value;
    notifyListeners();
  }

  String get userPhone => _usersPhone;
  set userPhone(String value) {
    _usersPhone = value;
    notifyListeners();
  }

  String get userBio => _usersBio;
  set userBio(String value) {
    _usersBio = value;
    notifyListeners();
  }
}
