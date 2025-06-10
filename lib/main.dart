import 'package:advisify/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Constants/constants.dart';
import 'Utils/shared_preferences.dart';
import 'Views/main_screen.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();

  await AppSharedPreferences.init();

  runApp(const MyApp());

}

class MyApp extends StatefulWidget {


  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    ConstValues.themeManager.addListener((themeListener));
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    ConstValues.themeManager.removeListener(themeListener);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(

        theme:AppSharedPreferences.getIsDarkMode()==true?darkTheme:lightTheme,
        darkTheme: darkTheme,
        themeMode: ConstValues.themeManager.themeData,

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:MainScreen()
    );
  }
}
