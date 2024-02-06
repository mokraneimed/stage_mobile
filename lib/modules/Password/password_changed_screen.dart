import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/components/components.dart';
import '../login/login_screen.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image(
              image: AssetImage('assets/images/Successmark.png'),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 60.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            AutoSizeText(
              "Mot de passe changé!",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            AutoSizeText(
              "Votre mot de passe a été changé \navec succès.",
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff8391A1),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            defaultButton(
              function: () {
                navPush(context, LoginScreen());
              },
              text: 'Retour connexion',
              height: 40.h,
              width: 345.w,
              isUpperCase: false,
              radius: 8.r,
              textSize: 15,
              context: context,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
