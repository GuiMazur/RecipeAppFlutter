import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginController{

  ValueNotifier<bool> inloader = ValueNotifier<bool>(false);

  String? _user;
  
  get context => null;
  setUser(String value) => _user = value;
  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async{
    inloader.value = true;
    await Future.delayed(Duration(milliseconds: 1500));
    inloader.value = false;
    return _user == 'admin' && _pass == '123';
  }
}