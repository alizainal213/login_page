import 'dart:async';

import 'package:flutter_bloc_login_app/models/error.dart';
import 'package:flutter_bloc_login_app/models/login_detail.dart';
import 'package:flutter_bloc_login_app/models/user.dart';

class AuthService {
  Future<User> loginUser(LoginDetail detail) async {
    await Future.delayed(Duration(seconds: 1)); //simulate network delay
    if (detail.email == 'alizainalabidin213@gmail.com' && detail.password == 'onta213') {
      return User(
          id: 1,
          name: 'Ali Zainal',
          email: 'alizainalabidin213@gmail.com',
          age: 14,
          profilePic: 'alizainal.jpg');
    } else {
      throw MyError(message: 'login incorrect.');
    }
  }
}
