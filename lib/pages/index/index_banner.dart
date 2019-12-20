import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerWidget extends StatelessWidget {
  // const BannerWidget({Key key}) : super(key: key);

  List<String> banners = <String>[
    'assets/banner/lun1.jpg',
    'assets/banner/lun2.jpg',
    'assets/banner/lun3.png',
    'assets/banner/lun4.png',
  ];

  @override
  Widget build(BuildContext context) {
    //计算宽高 按比例
    double width = MediaQuery.of(context).size.width;
    double height = width * 500.0 / 1080.0;

    return Container(
     // color: Color.fromRGBO(148, 109, 55, 1.0),
      width: width,
      height: height,
      child: Swiper(
        itemBuilder: (BuildContext context, index) {
          return Container(
            //margin: EdgeInsets.only( top:2),
            child: Image.asset(
              banners[index],
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
            color: Colors.blue,
          );
        }, 
        itemCount: banners.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
      ),
    );
  }
}
