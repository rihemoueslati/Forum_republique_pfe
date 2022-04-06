import 'package:flutter/material.dart';
import 'package:flutter_login_ui/db/db_helper.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../AndroidStudioProjects/forum_republique/lib/constants.dart';
import 'pages/splash_screen.dart';


Future<void> main() async{
  await DBHelper.initDb();
  await GetStorage.init();

  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {

  Color _primaryColor = HexColor('#b51248');
  Color _accentColor = HexColor('#fc031c');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
          ),
        ),
      ),
      home: SplashScreen(title: 'Forum de la République'),
    );
  }
}


