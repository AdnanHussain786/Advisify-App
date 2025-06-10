import 'package:advisify/Constants/constants.dart';
import 'package:flutter/material.dart';

class CustomScaffoldFirst extends StatelessWidget {
  CustomScaffoldFirst({
    super.key,
    this.mainBody,

  });
  final Widget? mainBody;

  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = MediaQuery.of(context).size.width < 700
        ? MediaQuery.of(context).size.width * 0.08
        : MediaQuery.of(context).size.width * 0.3;

    return Scaffold(
      backgroundColor: CustomAppColors.blackColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: mainBody,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
