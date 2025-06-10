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

    var textTheme=Theme.of(context).textTheme;

    return Scaffold(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By continuing, you agree to our\n',
                        style:textTheme.bodySmall!.copyWith(color: CustomAppColors.greyColor)
                      ),
                      TextSpan(
                        text: 'User Agreement',
                        style:textTheme.bodySmall
                      ),
                      TextSpan(
                        text: ' and ',
                          style:textTheme.bodySmall!.copyWith(color: CustomAppColors.greyColor)
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                          style:textTheme.bodySmall!
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}
