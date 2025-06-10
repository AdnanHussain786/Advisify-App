import 'package:advisify/Constants/constants.dart';
import 'package:advisify/Widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldFirst(
      mainBody: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Hi There',style: CustomTextStyles().title12PrimaryColor,)
        ],
      ),

    );
  }
}
