import 'package:advisify/Constants/constants.dart';
import 'package:advisify/Widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import '../Widgets/custom_button.dart';
import '../Widgets/custom_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textTheme=Theme.of(context).textTheme;
    return CustomScaffoldFirst(
      mainBody: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login to your account',style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w800)),
            Row(
              children: [
                Text("Don't have an account? ",style: textTheme.bodySmall!.copyWith(fontSize: 12),),
                SizedBox(width: 5,),
                Text('Sign Up',style: CustomTextStyles().primaryText14Bold,),

              ],
            ),

            SizedBox(height: 20,),

            TextFormFieldCustomerBuilt(
              prefixIcon: 'email',
              textInputType: TextInputType.emailAddress,
              controller: emailController,
              hintTxt: "Email/UserName",
              ontap: () {},
            ),
            TextFormFieldCustomerBuilt(
              obscText: true,
              showEyeIcon: true,
              prefixIcon: 'lock',
              textInputType: TextInputType.text,
              addBottomMargin: true,
              controller: passwordController,
              hintTxt: "Password",
              ontap: () {},
            ),

            Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot Password?",style: textTheme.bodySmall!.copyWith(color: CustomAppColors.greyColor),)),
            SizedBox(height: 20,),
            CustomButtonWidget(btntext: 'Login', isReverse:false,btnonPressed: (){},),
            SizedBox(height: 20,),
            Center(child: Text('OR',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: CustomAppColors.greyColor),)),

            SizedBox(height: 20,),

            CustomButtonWidget(
              isDarkGreyed: true,
              btntext: 'Continue with Google', isReverse:true,btnonPressed: (){},centerWidget: Row(
              children: [
                Image.asset('assets/images/google.png',width: 24,height: 24,),
                SizedBox(width: 10,),
                Text('Continue with Google',style: textTheme.bodyMedium!.copyWith(color: CustomAppColors.whiteColor)),



              ],
            ),),
            SizedBox(height: 10,),
            CustomButtonWidget(
              isDarkGreyed: true,
              btntext: 'Continue with Apple', isReverse:true,btnonPressed: (){},centerWidget: Row(
              children: [
                Image.asset('assets/images/mac.png',width: 24,height: 24,color: CustomAppColors.whiteColor),
                SizedBox(width: 10,),
                Text('Continue with Apple',style: textTheme.bodyMedium!.copyWith(color: CustomAppColors.whiteColor)),



              ],
            ),),


          ],
        ),
      ),
    );
  }
}
