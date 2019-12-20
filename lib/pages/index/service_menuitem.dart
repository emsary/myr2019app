import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final ServiceItemViewModel data;

  ServiceItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        border: new Border.all(color: Color(0xFFc8c8c8), width: 0.2), // 边色与边宽度
      ),
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //垂直居中
        children: <Widget>[
          InkWell(
            onTap: () {
              print(this.data.title);
            },
            child: Container(
                decoration: new BoxDecoration(
                  //  border: new Border.all( color: Color(0xFFFFFF00), width: 0.5), // 边色与边宽度
                  color: this.data.color, // 底色
                  shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                  //shape: BoxShape.rectangle, // 默认值也是矩形
                  // borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                ),
                constraints: BoxConstraints(
                  minWidth: 60,
                  maxWidth: 60,
                  minHeight: 60,
                  maxHeight: 60,
                ),
                //margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: this.data.icon),
          ),
          Text(
            this.data.title,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceItemViewModel {
  /// 图标
  final Icon icon;

  /// 标题
  final String title;

  /// 圆的颜色
  final Color color;

  const ServiceItemViewModel({
    this.color,
    this.icon,
    this.title,
  });
}
