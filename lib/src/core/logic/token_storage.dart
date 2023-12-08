// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

abstract class ITokenStorage {
  //save token
  Future<void> saveToken(String token);
  Future<void> saveNickName(String nickname);
  Future<void> saveUserEmail(String userEmail);
  Future<void> saveUserID(int userId);
  Future<void> saveRefreshToken(String refreshToken);

  /// Стрим аутентификации
  StreamController<bool> get authStream;

  // delete token
  void deleteToken();

  // check token exist/has
  bool hasToken();

  // get token
  String? getToken();
  String? getNickName();
  String? getUserEmail();
  int? getUserId();
}

const String _tokenKey = 'user_token';
const String _refreshToken = 'user_refresh_token';
const String _nickname = 'user_nickname';
const String _email = 'user_email';
const String _userId = 'user_id';

class SharedPrefsTokenStorage implements ITokenStorage {
  SharedPrefsTokenStorage({required final SharedPreferences preferences})
      : _preferences = preferences;

  // ignore: member-ordering-extended
  final SharedPreferences _preferences;
  final _authStream = StreamController<bool>.broadcast();

  @override
  Future<void> deleteToken() async {
    _authStream.add(false);
    // ignore: avoid-ignoring-return-values
    await _preferences.remove(_tokenKey);
    await _preferences.remove(_refreshToken);
    await _preferences.remove(_email);
    await _preferences.remove(_userId);
    await _preferences.remove(_nickname);
  }

  @override
  String? getToken() => _preferences.getString(_tokenKey);
  @override
  String? getNickName() => _preferences.getString(_nickname);
  @override
  String? getUserEmail() => _preferences.getString(_email);
  @override
  int? getUserId() => _preferences.getInt(_userId);

  @override
  StreamController<bool> get authStream => _authStream;

  @override
  bool hasToken() {
    /// Проверяем есть ли ключ, если нет возвращаем false
    if (!_preferences.containsKey(_tokenKey)) {
      return false;
    } else {
      final token = _preferences.getString(_tokenKey);
      final refreshToken = _preferences.getString(_refreshToken);

      return token != null && refreshToken != null ? true : false;
    }
  }

  @override
  Future<bool> saveToken(String token) async {
    _authStream.add(true);
    return _preferences.setString(_tokenKey, token);
  }

  @override
  Future<bool> saveRefreshToken(String refreshToken) async {
    _authStream.add(true);
    return _preferences.setString(_refreshToken, refreshToken);
  }

  @override
  Future<bool> saveNickName(String nickname) async {
    _authStream.add(true);
    return _preferences.setString(_nickname, nickname);
  }

  @override
  Future<bool> saveUserEmail(String email) async {
    _authStream.add(true);
    return _preferences.setString(_email, email);
  }

  @override
  Future<bool> saveUserID(int userId) async {
    _authStream.add(true);
    return _preferences.setInt(_userId, userId);
  }
}
