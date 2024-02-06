import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketplace_version_mobile/layout/home_layout.dart';
import 'package:marketplace_version_mobile/modules/login/cubit/cubit.dart';
import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';
import '../Password/forgot_password_screen.dart';
import '../register/register_screen.dart';
import 'cubit/states.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (BuildContext context, Object? state) {},
        builder: (BuildContext context, state) {
          var cubit = LoginCubit.get(context);
          return SafeArea(
              child: Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      DefaultBackButton(function: () {
                        Navigator.pop(context);
                      }),
                      SizedBox(
                        height: 15.h,
                      ),
                      AutoSizeText(
                        "Heureux de vous\nrevoir!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: defaultColor,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Container(
                        height: 40.h,
                        child: defaultFormField(
                            controller: cubit.email_controller,
                            type: TextInputType.text,
                            label: "Entrer votre Email",
                            validate: (value) {
                              if (value!.isEmpty) {
                                return "Entrer votre mot de passe";
                              }
                            },
                            radius: 8.r),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        child: defaultFormField(
                            controller: cubit.password_controller,
                            type: TextInputType.text,
                            label: "Entrer votre mot de passe",
                            validate: (value) {
                              if (value!.isEmpty) {
                                return "Entrer votre mot de passe";
                              }
                            },
                            radius: 8.r,
                            suffIcon: cubit.icon,
                            suffpressd: cubit.ChangeVisibility,
                            suffIconColor: Color(0xff6A707C),
                            suffIconSize: 17,
                            obscureText: cubit.obsecure),
                      ),
                      Row(
                        children: [
                          Spacer(),
                          defaultTexButton(
                              function: () {
                                navPush(context, ForgotPasswordScreen());
                              },
                              text: "Mot de passe oublié?",
                              textSize: 14,
                              textColor: Color(0xff6A707C)),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      defaultButton(
                        function: () {
                          navPush(context, HomeLayout());
                        },
                        text: 'Se connecter',
                        height: 40.h,
                        width: 345.w,
                        isUpperCase: false,
                        radius: 8.r,
                        textSize: 15,
                        context: context,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xffe8ecf4),
                              height: 60.h,
                              thickness: 2,
                            ),
                          ),
                          AutoSizeText(" ou bien avec ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff6a707c),
                              )),
                          Expanded(
                            child: Divider(
                              color: Color(0xffe8ecf4),
                              height: 60.h,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 45.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: Color(0xffe8ecf4))),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 16,
                                ),
                              )),
                          Container(
                              height: 45.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: Color(0xffe8ecf4))),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 16,
                                ),
                              )),
                          Container(
                              height: 45.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: Color(0xffe8ecf4))),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.linkedinIn,
                                  size: 16,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(height: 120.h),
                      Center(
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Vous n'avez pase de compte ? ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  navPush(context, RegisterScreen());
                                },
                              text: "S'inscrire maintenant",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: defaultColor),
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ));
        },
      ),
    );
  }
}
