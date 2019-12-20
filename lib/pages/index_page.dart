import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myr2019app/pages/home.page.dart';
import 'bet_page.dart';
import 'lottery_page.dart';
import 'record_page.dart';
import 'member_page.dart';
import 'home.page.dart';
import '../config/custom_icons.dart';
import 'package:provider/provider.dart';
import '../provider/current_index_provider.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text("首页")
    ),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.goucai),
        title: Text("购彩")
    ),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.kaijiang),
        title: Text("开奖")
    ),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.zhudan),
        title: Text("注单")
    ),
    BottomNavigationBarItem(
        icon: Icon(CustomIcons.wode),
        title: Text("我的")
    ),
  ];

  final List tabBodies = [
    HomePage(),
    BetPage(),
    LotteryPage(),
    RecordPage(),
    MemberPage(),
  ];


  @override
  Widget build(BuildContext context) {
    //取到当前索引状态值
    int currentIndex = Provider.of<CurrentIndexProvider>(context).currentIndex;

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index){
          Provider.of<CurrentIndexProvider>(context).changeIndex(index);
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children:tabBodies,
      ),
    );
  }
}


//class IndexPage1 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Scaffold(
//          appBar: AppBar(
//            title: new Image.asset(
//              "assets/logo.png",
//              width: 100.0,
//            ),
//            leading: IconButton(
//              icon: Icon(Icons.chat),
//              onPressed: () {
//                print('home app bar');
//              },
//            ),
//            actions: <Widget>[
//              IconButton(
//                icon: Icon(Icons.format_list_bulleted),
//                onPressed: () {},
//              )
//            ],
//          ),
//          body:
//          Container(
//            decoration: BoxDecoration(
//              image: DecorationImage(
//                image: AssetImage("assets/bg.png"),
//                fit: BoxFit.cover,
//              ),
//            ),
//            child: ListView(
//              //shrinkWrap:true,  //禁止下拉滑动
//              physics: const AlwaysScrollableScrollPhysics(),
//              children: <Widget>[
//                BannerWidget(),
//                MenuButtonsWidget(),
//              ],
//            ),
//          )),
//    );
//  }
//}
