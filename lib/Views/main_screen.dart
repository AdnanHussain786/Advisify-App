import 'package:advisify/Constants/constants.dart';
import 'package:advisify/Views/login_screen.dart';
import 'package:advisify/Widgets/custom_button.dart';
import 'package:advisify/Widgets/custom_scaffold.dart';
import 'package:advisify/theme/theme_constants.dart';
import 'package:flutter/material.dart';

import '../Utils/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    var textTheme=Theme.of(context).textTheme;
    return CustomScaffoldFirst(
      mainBody: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Turn ${AppSharedPreferences.getIsDarkMode()==true?"off":'on'} Dark Theme',style: Theme.of(context).textTheme.titleSmall,),
              Switch(
                  activeColor: primaryColor,
                  inactiveThumbColor: primaryColor,
                  thumbColor: WidgetStatePropertyAll(primaryColor),
                  value:AppSharedPreferences.getIsDarkMode()! , onChanged: (value){
                ConstValues.themeManager.toggleTheme(value);
                setState(() {});
              }),

            ],
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Image.asset('assets/images/ai.png'),
            ),
          ),

          Text(
        'Hello!\nRevolutionize Your Decisions with AI',style: textTheme.bodyLarge),
          SizedBox(height: 10,),
          Text("I'm your friendly immigration assistant,\nhere to help guide you through\nyour journey.",style:textTheme.bodySmall!.copyWith(color: CustomAppColors.greyColor) ),

          SizedBox(height: 50,),

          Row(
            children: [
              Expanded(child: CustomButtonWidget(btntext: 'Sign Up', isReverse:false,btnonPressed: (){},)),
              SizedBox(width: 8,),
              Expanded(child: CustomButtonWidget(btntext: 'Log in', isReverse:true,btnonPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              },)),
            ],
          )
          




        ],
      ),

    );
  }
}
