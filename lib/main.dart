import 'package:flutter/material.dart';
import 'package:oyo_clone_ui/aeoui.dart';
import 'package:oyo_clone_ui/constant/constant.dart';
import 'package:oyo_clone_ui/splashscreen.dart';

void main() => runApp(MaterialApp(
      title: 'AEO UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: <String, WidgetBuilder>{
        Constants.splashScreen: (BuildContext context) =>
            const AnimatedSplashScreen(),
        Constants.aeoUi: (BuildContext context) => const AeoUI(),
      },
      initialRoute: Constants.splashScreen,
    ));
