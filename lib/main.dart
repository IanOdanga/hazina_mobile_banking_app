import 'package:hazinaMobile/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'Routes/transition_route_observer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hazina Sacco',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        accentColor: Colors.black,
        textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
      ),
      //darkTheme: MyThemes.darkTheme,
      //theme: lightThemeData,
      /*darkTheme: darkThemeData,*/
      //themeMode: EasyDynamicTheme.of(context).themeMode,
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      navigatorObservers: [TransitionRouteObserver()],
    );
  }
}

