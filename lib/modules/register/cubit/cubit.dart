import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/modules/register/cubit/states.dart';
import 'package:marketplace_version_mobile/shared/network/remote/dio_helper.dart';
import 'package:marketplace_version_mobile/shared/network/endpoints.dart';
import 'package:otp_text_field/otp_field.dart';

enum Role { Achteur, Vendeur, deux }

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  int index = 0;
  var formKey = GlobalKey<FormState>();
  TextEditingController entreprise_controller = TextEditingController();
  TextEditingController nom_controller = TextEditingController();
  TextEditingController prenom_controller = TextEditingController();
  TextEditingController username_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  OtpFieldController? otp_controller = OtpFieldController();
  TextEditingController confirmation_password_controller =
      TextEditingController();
  Role? role;
  void NextStep() {
    index < 1 ? index++ : null;
    emit(RegisterInitialState());
  }

  void PreviousStep() {
    index > 0 ? index-- : null;
    emit(RegisterInitialState());
  }

  void ChangeRadioValue(Role? value) {
    role = value;
    emit(RegisterInitialState());
  }

  FutureOr<void> register() async {
    emit(RegisterLoadingState());
    try {
      await DioHelper.postData(url: register_, data: {
        "firstName": prenom_controller.text,
        "lastName": nom_controller.text,
        "email": email_controller.text,
        "password": password_controller.text,
        "phone": "0659330933",
        "country": "Algeria"
      });
      emit(RegisterFinishedState());
    } catch (e) {
      print(e.toString());
      emit(RegisterErrorState());
    }
  }
}
