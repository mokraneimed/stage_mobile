import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/modules/account/cubit/states.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';

class AccountCubit extends Cubit<AccountStates> {
  AccountCubit() : super(AccountInitialState());

  static AccountCubit get(context) => BlocProvider.of(context);
  bool is_seller = true;
  TextEditingController nom = TextEditingController(text: "Matilda Brown");
  TextEditingController phone_number =
      TextEditingController(text: "0666666666");
  TextEditingController email =
      TextEditingController(text: "matildabrown@mail.com");
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmationpassword = TextEditingController();
  Future? showModal(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.grey[100],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Container(
                        height: 4,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      "Nom complet",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9B9B9B),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 56,
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: defaultFormField(
                            controller: nom,
                            type: TextInputType.text,
                            border: false,
                            label: "",
                            validate: (value) {
                              if (value!.isEmpty) {
                                return "Entrer votre nom";
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AutoSizeText(
                      "Numéro de  téléphone",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9B9B9B),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 56,
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: defaultFormField(
                            controller: phone_number,
                            type: TextInputType.text,
                            label: "",
                            border: false,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return "Entrer votre nom";
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AutoSizeText(
                      "Adresse Mail",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9B9B9B),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 56,
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: defaultFormField(
                            controller: email,
                            type: TextInputType.text,
                            border: false,
                            label: "",
                            validate: (value) {
                              if (value!.isEmpty) {
                                return "Entrer votre adresse mail";
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defaultButton(
                        width: double.infinity,
                        height: 50,
                        radius: 8,
                        textSize: 16,
                        context: context,
                        function: () {
                          Navigator.pop(context);
                        },
                        text: 'Confirmer')
                  ],
                )),
          );
        });
  }

  Future ChangePassword(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.grey[100],
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * .53,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 6,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: AutoSizeText(
                          "Changement de mot de passe",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56,
                        child: Card(
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: defaultFormField(
                              controller: oldPassword,
                              type: TextInputType.text,
                              border: false,
                              label: "Vieux mot de passe",
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer votre nom";
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Spacer(),
                          defaultTexButton(
                              function: () {},
                              text: "Mot de passe oubliè?",
                              textColor: Color(0xff9B9B9B),
                              textSize: 13),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56,
                        child: Card(
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: defaultFormField(
                              controller: newPassword,
                              type: TextInputType.text,
                              border: false,
                              label: "Nouveau mot de passe",
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer votre nom";
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56,
                        child: Card(
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: defaultFormField(
                              controller: confirmationpassword,
                              type: TextInputType.text,
                              border: false,
                              label: "Confirmer le nouveau mot de passe",
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer votre nom";
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      defaultButton(
                          width: double.infinity,
                          height: 50,
                          radius: 8,
                          textSize: 14,
                          context: context,
                          function: () {
                            Navigator.pop(context);
                          },
                          text: 'Sauvgarder le mot de passe')
                    ],
                  )),
            ),
          );
        });
  }
}
