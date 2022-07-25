import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomPageController{
  ValueNotifier indexBottomPageController = ValueNotifier(0);

  onTapPageController(int page, PageController pageController) {    
    indexBottomPageController.value = page;
    pageController.animateToPage(
    page,
    duration: Duration(milliseconds: 400),
    curve: Curves.ease
    );
  }
}