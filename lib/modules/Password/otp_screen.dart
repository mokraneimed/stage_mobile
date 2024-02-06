import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace_version_mobile/modules/Password/new_password_screen.dart';
import 'package:marketplace_version_mobile/modules/login/login_screen.dart';
import 'package:marketplace_version_mobile/modules/register/cubit/cubit.dart';
import 'package:marketplace_version_mobile/modules/register/cubit/states.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PasswordCubit(),
        child: BlocConsumer<PasswordCubit, PasswordStates>(
          builder: (BuildContext context, state) {
            var cubit = PasswordCubit.get(context);
            if (state is PasswordInitState || state is OTPVerificationError) {
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
                                      TextField(
                                        controller: cubit.otpTry,
                                      ),
                                      AutoSizeText(
                                        "OTP Verification",
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
                                        "Entrez le code de vérification que nous venons d'envoyer sur votre adresse e-mail.",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff8391A1),
                                        ),
                                      ),
                                      SizedBox(height: 30.h),
                                      OTPTextField(
                                        controller: cubit.otp_controller,
                                        length: 6,
                                        textFieldAlignment:
                                            MainAxisAlignment.center,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        spaceBetween: 10,
                                        fieldWidth: 50,
                                        fieldStyle: FieldStyle.box,
                                        otpFieldStyle: OtpFieldStyle(
                                          backgroundColor: Color(0xffF7F8F9),
                                          borderColor: Colors.transparent,
                                          focusBorderColor: defaultColor,
                                          enabledBorderColor:
                                              Colors.transparent,
                                        ),
                                        outlineBorderRadius: 8,
                                        style: TextStyle(
                                            fontSize: 28, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 25.h,
                                      ),
                                      defaultButton(
                                        function: cubit.verifyOTP,
                                        text: 'Vérifier',
                                        height: 40.h,
                                        width: 345.w,
                                        isUpperCase: false,
                                        radius: 8.r,
                                        textSize: 15,
                                        context: context,
                                      ),
                                    ]),
                              )))));
            }
            if (state is OTPVerificationLoading) {
              return Center(child: Text("Loading ...."));
            }
            if (state is OTPVerificationFinished) {
              return LoginScreen();
            }
            return Center(
              child: Text("error"),
            );
          },
          listener: (BuildContext context, Object? state) {},
        ));
  }
}
