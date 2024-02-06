import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketplace_version_mobile/modules/Password/otp_screen.dart';
import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';
import '../login/login_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        builder: (BuildContext context, state) {
          var cubit = RegisterCubit.get(context);
          if (state is RegisterFinishedState) {
            return OTPScreen();
          }
          if (state is RegisterInitialState || state is RegisterErrorState) {
            return SafeArea(
              child: Scaffold(
                body: Theme(
                  data: ThemeData(
                      canvasColor: Colors.white,
                      listTileTheme: ListTileThemeData(
                          horizontalTitleGap: 0.w, minLeadingWidth: 10),
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                            primary: defaultColor,
                            onSurface: Colors.grey,
                          )),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form(
                      key: cubit.formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: DefaultBackButton(function: () {
                              Navigator.pop(context);
                            }),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: AutoSizeText(
                              "Bonjour! Inscrivez-vous\npour commencer",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: defaultColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          EasyStepper(
                            steppingEnabled: false,
                            activeStep: cubit.index,
                            internalPadding: 0,
                            lineLength:
                                MediaQuery.of(context).size.width * 0.45,
                            lineThickness: 1,
                            lineType: LineType.normal,
                            stepShape: StepShape.circle,
                            stepBorderRadius: 15,
                            defaultStepBorderType: BorderType.normal,
                            borderThickness: 3,
                            stepRadius: 15,
                            unreachedStepBackgroundColor: Colors.white,
                            finishedStepBorderColor: Colors.deepOrange,
                            finishedStepTextColor: Colors.deepOrange,
                            finishedStepBackgroundColor: Colors.deepOrange,
                            activeStepIconColor: Colors.deepOrange,
                            showLoadingAnimation: false,
                            steps: [
                              EasyStep(
                                icon: Icon(FontAwesomeIcons.one),
                                finishIcon: Icon(Icons.check),
                                customTitle: AutoSizeText(
                                  "Profil de\nl'entreprise",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              EasyStep(
                                icon: Icon(FontAwesomeIcons.two),
                                finishIcon: Icon(Icons.check),
                                customTitle: Text(
                                  "Adresse\ne-mail",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                            onStepReached: (value) {},
                          ),
                          cubit.index == 0
                              ? FirstStepContent(
                                  context,
                                  cubit.NextStep,
                                  cubit.ChangeRadioValue,
                                  cubit.role,
                                  cubit.entreprise_controller,
                                  cubit.nom_controller,
                                  cubit.prenom_controller)
                              : SecondStepContent(
                                  context,
                                  cubit.username_controller,
                                  cubit.email_controller,
                                  cubit.password_controller,
                                  cubit.confirmation_password_controller,
                                  cubit.PreviousStep,
                                  cubit.register),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          if (state is RegisterLoadingState) {
            return Center(child: Text("Loading ...."));
          }
          return Center(
            child: Text("error"),
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }

  Widget FirstStepContent(
      BuildContext context,
      Function nextStep,
      void Function(Role? role) ChangeRadioValue,
      Role? role,
      entreprise_controller,
      nom_controller,
      prenom_controller) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 40.h,
            child: defaultFormField(
                controller: entreprise_controller,
                type: TextInputType.text,
                label: "Nom légal de l'entreprise",
                validate: (value) {
                  if (value!.isEmpty) {
                    return "Entrer le nom d'entreprise";
                  }
                },
                radius: 8.r),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: RadioListTile(
                  title: AutoSizeText(
                    "Achteur",
                    style: TextStyle(fontSize: 14),
                  ),
                  activeColor: Colors.black,
                  value: Role.Achteur,
                  groupValue: role,
                  onChanged: ChangeRadioValue,
                  contentPadding: EdgeInsets.only(left: 0),
                ),
              ),
              Expanded(
                child: RadioListTile(
                  title: AutoSizeText(
                    "Vendeur",
                    style: TextStyle(fontSize: 14),
                  ),
                  activeColor: Colors.black,
                  value: Role.Vendeur,
                  groupValue: role,
                  onChanged: ChangeRadioValue,
                  contentPadding: EdgeInsets.only(left: 0),
                ),
              ),
              Expanded(
                child: RadioListTile(
                  title: AutoSizeText(
                    "Les deux",
                    style: TextStyle(fontSize: 14),
                  ),
                  activeColor: Colors.black,
                  value: Role.deux,
                  groupValue: role,
                  onChanged: ChangeRadioValue,
                  contentPadding: EdgeInsets.all(0),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 40.h,
            child: defaultFormField(
                controller: nom_controller,
                type: TextInputType.text,
                label: "Nom",
                validate: (value) {
                  if (value!.isEmpty) {
                    return "Entrer votre nom";
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
                controller: prenom_controller,
                type: TextInputType.text,
                label: "Prénom",
                validate: (value) {
                  if (value!.isEmpty) {
                    return "Entrer votre prénom";
                  }
                },
                radius: 8.r),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 40.h,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 13, right: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              value: 1,
              items: [
                DropdownMenuItem(
                    value: 1,
                    child: AutoSizeText(
                      "Algeria",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1,
                      ),
                    )),
                DropdownMenuItem(
                    value: 2,
                    child: AutoSizeText(
                      "USA",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1,
                      ),
                    )),
                DropdownMenuItem(
                    value: 3,
                    child: AutoSizeText(
                      "UK",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1,
                      ),
                    )),
                DropdownMenuItem(
                    value: 4,
                    child: AutoSizeText(
                      "France",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1,
                      ),
                    )),
                DropdownMenuItem(
                    value: 5,
                    child: AutoSizeText(
                      "Canada",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1,
                      ),
                    )),
              ],
              onChanged: (int? value) {},
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Spacer(),
              defaultButton(
                context: context,
                function: nextStep,
                text: 'Next',
                height: 40.h,
                width: 110,
                isUpperCase: false,
                radius: 8.r,
                textSize: 14,
              ),
            ],
          ),
          SizedBox(height: 60.h),
          Center(
            child: AutoSizeText(
              "Vous avez déjà un compte?",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          Center(
            child: defaultTexButton(
                function: () {
                  navPush(context, LoginScreen());
                },
                text: "Connectez-vous maintenant",
                textSize: 15),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }

  Widget SecondStepContent(
      BuildContext context,
      username_controller,
      email_controller,
      password_controller,
      confirmation_password_controller,
      previousStep,
      Function function) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            child: defaultFormField(
                controller: username_controller,
                type: TextInputType.text,
                label: "Nom d'utilisateur",
                validate: (value) {
                  if (value!.isEmpty) {
                    return "Entrer votre nom";
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
                controller: email_controller,
                type: TextInputType.text,
                label: "Email",
                validate: (value) {
                  if (value!.isEmpty) {
                    return "Entrer votre adresse email";
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
                controller: password_controller,
                type: TextInputType.text,
                label: "Mot de passe",
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
                controller: confirmation_password_controller,
                type: TextInputType.text,
                label: "Confirmez le mot de passe",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              defaultButton(
                context: context,
                function: previousStep,
                text: 'Previous',
                height: 40.h,
                width: 110,
                isUpperCase: false,
                radius: 8.r,
                textSize: 14,
                borderColor: defaultColor,
                buttonColor: Colors.white,
                textColor: defaultColor,
              ),
              defaultButton(
                context: context,
                function: function,
                text: 'Inscrivez-vous',
                height: 40.h,
                width: 110,
                isUpperCase: false,
                radius: 8.r,
                textSize: 14,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
          SizedBox(height: 40.h),
          Center(
            child: AutoSizeText(
              "Vous avez déjà un compte?",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          Center(
            child: defaultTexButton(
                function: () {
                  navPush(context, LoginScreen());
                },
                text: "Connectez-vous maintenant",
                textSize: 15),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
