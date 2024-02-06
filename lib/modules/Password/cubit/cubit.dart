import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/modules/Password/cubit/states.dart';
import 'package:marketplace_version_mobile/shared/network/endpoints.dart';
import 'package:marketplace_version_mobile/shared/network/remote/dio_helper.dart';
import 'package:otp_text_field/otp_field.dart';

class PasswordCubit extends Cubit<PasswordStates> {
  PasswordCubit() : super(PasswordInitState());

  static PasswordCubit get(context) => BlocProvider.of(context);

  var formKey = GlobalKey<FormState>();
  TextEditingController email_controller = TextEditingController();
  OtpFieldController? otp_controller = OtpFieldController();
  TextEditingController new_password_controller = TextEditingController();
  TextEditingController confirm_password_controller = TextEditingController();

  TextEditingController otpTry = TextEditingController();

  FutureOr<void> verifyOTP() async {
    emit(OTPVerificationLoading());
    try {
      final verification = await DioHelper.postData(url: verifyOTP_, data: {
        "OTP": otpTry.text,
      });
      final jsonResponse = jsonDecode(verification.toString());
      print(jsonResponse);
      if (jsonResponse["message"] == "Login failed") {
        emit(OTPVerificationFinished());
      } else {
        emit(OTPVerificationError());
      }
    } catch (e) {
      print(e.toString());
      emit(OTPVerificationError());
    }
  }
}
