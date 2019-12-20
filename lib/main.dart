import 'package:flutter/material.dart';
import './pages/index_page.dart';
import './config/config.dart';
import './provider/current_index_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (_) => CurrentIndexProvider()),
        ],
        child: Container(
          child: MaterialApp(
            title: MString.mainTitle,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primaryColor: MColor.primaryColor,
                accentColor:MColor.accentColor
            ),
            home: IndexPage(),
          ),
        ),
      );


  }
}
