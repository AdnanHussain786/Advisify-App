import 'package:advisify/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Utils/shared_preferences.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();

  await AppSharedPreferences.init();

  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:LoginScreen()
    );
  }
}
