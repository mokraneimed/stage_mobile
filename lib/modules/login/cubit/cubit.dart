import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/modules/login/cubit/states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  var formKey =GlobalKey<FormState>() ;
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  IconData icon = Icons.visibility_off_outlined;

  bool obsecure = true;

  void ChangeVisibility() {
    obsecure = !obsecure;
    if (obsecure) {
      icon = Icons.visibility_off_outlined;
    } else
      icon = Icons.visibility_outlined;
    emit(LoginChangeVisibilityPasswordState());
  }
}
