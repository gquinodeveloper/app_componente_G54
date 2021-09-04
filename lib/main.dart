import 'package:app_componentes/pages/alert_page.dart';
import 'package:app_componentes/pages/animated_page.dart';
import 'package:app_componentes/pages/avatar_pager.dart';
import 'package:app_componentes/pages/card_page.dart';
import 'package:app_componentes/pages/home_page.dart';
import 'package:app_componentes/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      //home: AlertPage(),
      //home: AvatarPage(),
      //home: CardPage(),
      home: InputPage(),
    );
  }
}
