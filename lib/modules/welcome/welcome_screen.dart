import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace_version_mobile/layout/home_layout.dart';
import 'package:marketplace_version_mobile/modules/home/home_screen.dart';
import 'package:marketplace_version_mobile/modules/register/register_screen.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';
import 'package:marketplace_version_mobile/shared/style/colors.dart';

import '../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image(
              image: AssetImage('assets/images/img.png'),
              width: media.size.width * 0.8,
              height: 40.h,
            ),
            Spacer(),
            defaultButton(
              context: context,
              function: () {},
              text: 'Se connecter',
              width: MediaQuery.of(context).size.width * 0.85,
              textColor: Colors.white,
              buttonColor: defaultColor,
              isUpperCase: false,
              radius: 8,
              textSize: 16.sp,
            ),
            SizedBox(height: 15),
            defaultButton(
              context: context,
              width: MediaQuery.of(context).size.width * 0.85,
              function: () {
                navPush(context, RegisterScreen());
              },
              text: "S'incscrire",
              textColor: defaultColor,
              buttonColor: Colors.white,
              isUpperCase: false,
              radius: 8,
              textSize: 16.sp,
              borderColor: defaultColor,
              borderWidth: 1,
            ),
            SizedBox(height: 40.h),
            defaultTexButton(
              function: () => navPush(context, HomeLayout()),
              text: 'Continuer en tant qu\'invité',
              underline: true,
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
