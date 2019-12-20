import 'package:flutter/material.dart';
import 'index/index_banner.dart';
import 'index/index_menu_buttons.dart';
import '../config/config.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(

            title: new Image.asset(
              "assets/logo.png",
              width: 100.0,
            ),
            leading: IconButton(
              icon: Icon(Icons.format_list_bulleted),
              onPressed: () {
                print('home app bar');
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {},
              )
            ],
          ),
          body:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              //shrinkWrap:true,  //禁止下拉滑动
              physics: const AlwaysScrollableScrollPhysics(),
              children: <Widget>[
                BannerWidget(),
                MenuButtonsWidget(),
              ],
            ),
          )),
    );
  }
}
