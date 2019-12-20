import 'package:flutter/material.dart';
import 'service_menuitem.dart';
import '../../config/custom_icons.dart';

class MenuButtonsWidget extends StatelessWidget {
  static

      ///  服务菜单
      const List<ServiceItemViewModel> serviceList = [
    ServiceItemViewModel(
      title: '彩票游戏',
      color: Color(0xFFfa484c),
      icon: Icon(
        CustomIcons.games,
        size: 45,
        color: Colors.white,
      ),
    ),
    ServiceItemViewModel(
      title: '股票买卖',
      color: Color(0xFF48b0fb),
      icon: Icon(
        CustomIcons.gupiao,
        size: 45,
        color: Colors.white,
      ),
    ),
    ServiceItemViewModel(
      title: '投资理财',
      color: Color(0xFFa447fb),
      icon: Icon(
        CustomIcons.licai,
        size: 45,
        color: Colors.white,
      ),
    ),
    ServiceItemViewModel(
      title: '真人娱乐',
      color: Color(0xFFfa48b5),
      icon: Icon(
        CustomIcons.zhenren,
        size: 40,
        color: Colors.white,
      ),
    ),
    ServiceItemViewModel(
      title: '棋牌游戏',
      color: Color(0xFF57aa4c),
      icon: Icon(
        CustomIcons.qipai,
        size: 45,
        color: Colors.white,
      ),
    ),
    ServiceItemViewModel(
      title: '优惠活动',
      color: Color(0xFFda0707),
      icon: Icon(
        CustomIcons.youhui,
        size: 45,
        color: Colors.white,
      ),
    ),
    ServiceItemViewModel(
      title: '诚招代理',
      color: Color(0xFFdd8700),
      icon: Icon(
        CustomIcons.daili,
        size: 45,
        color: Colors.white,
      ),
    ),
    ServiceItemViewModel(
      title: '帮助中心',
      color: Color(0xFF1c2d76),
      icon: Icon(
        CustomIcons.help,
        size: 45,
        color: Colors.white,
      ),
    ),
    ServiceItemViewModel(
      title: '在线客服',
      color: Color(0xFFa35c09),
      icon: Icon(
        CustomIcons.kefu,
        size: 50,
        color: Colors.white,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        //padding: const EdgeInsets.all(8.0),
        crossAxisCount: 3, //每行显示个数
        crossAxisSpacing: 0, //网格间的距离(左右)
        mainAxisSpacing: 0, //网格间的距离(上下)
        childAspectRatio: 1, //网格宽高比
        shrinkWrap: true, // 在GridView 添加shrinkWrap:true即可解决报错问题；
        physics:
            new NeverScrollableScrollPhysics(), // 在 GridView 添加 physics: new NeverScrollableScrollPhysics()解决不滚动问题；
        children: serviceList.map((item) => ServiceItem(data: item)).toList(),
      ),
    );
  }
}
