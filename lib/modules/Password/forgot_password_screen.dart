import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';
import 'otp_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return BlocProvider(
        create: (context) => PasswordCubit(),
        child: BlocConsumer<PasswordCubit, PasswordStates>(
            listener: (BuildContext context, Object? state) {},
            builder: (BuildContext context, state) {
              var cubit = PasswordCubit.get(context);
              return SafeArea(
                  child: Scaffold(
                      body: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Padding(
                              padding: EdgeInsets.only(left: 15.w, right: 15.w),
                              child: Form(
                                key: formKey,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        "Mot de passe oublié?",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: defaultColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      AutoSizeText(
                                        "Veuillez saisir l'adresse e-mail associèe à votre compte.",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff8391A1),
                                        ),
                                      ),
                                      SizedBox(height: 30.h),
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
                                        height: 25.h,
                                      ),
                                      defaultButton(
                                        function: () {
                                          navPush(context, OTPScreen());
                                        },
                                        text: 'Envoyer le code',
                                        height: 40.h,
                                        width: 345.w,
                                        isUpperCase: false,
                                        radius: 8.r,
                                        textSize: 15,
                                        context: context,
                                      ),
                                    ]),
                              )))));
            }));
  }
}
