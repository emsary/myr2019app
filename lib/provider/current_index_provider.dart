import 'package:flutter/material.dart';

//切换底部导航栏
class CurrentIndexProvider with ChangeNotifier{
  int currentIndex = 0 ;

  //改变导航状态
  changeIndex(int newIndex){
    currentIndex = newIndex;
    //通知刷新状态值
    notifyListeners();
  }


}

