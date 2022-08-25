import 'package:flutter/material.dart';

// ignore: camel_case_extensions
extension navigationHelper on BuildContext{
  go(Route route){
    Navigator.of(this).push(route);
  }
  back(){
    Navigator.of(this).pop();
  }
  // offUntil(Route route){
  //   Navigator.of(this).popUntil((route) => true);
  // }
  offAll(Route route){
    Navigator.of(this).pushReplacement(route);
  }
}