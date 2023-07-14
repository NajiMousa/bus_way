
import 'package:bus_way/screens/about_screen.dart';
import 'package:bus_way/screens/home_screen.dart';
import 'package:bus_way/screens/launch_screen.dart';
import 'package:bus_way/screens/login_screen.dart';
import 'package:bus_way/screens/main_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_localization/flutter_localization.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar'),
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalCupertinoLocadlizations.delegate,
      //   GlobalWidgetsLocadlizations.delegate,
      // ],
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context) => LaunchScreen(),
        '/home_screen' : (context) => HomeScreen(),
        '/about_screen' : (context) => AboutScreen(),
        '/login_screen' : (context) => LoginScreen(),
        '/main_screen' : (context) => MainScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
