import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/modules/account/cubit/cubit.dart';
import 'package:marketplace_version_mobile/modules/account/cubit/states.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountCubit(),
      child: BlocConsumer<AccountCubit ,AccountStates>(
        builder: (BuildContext context, state) {
          var cubit = AccountCubit.get(context);
          return Scaffold(
            appBar: AppBar(

              leading: IconButton(

                icon:
                Icon(Icons.arrow_back_rounded, color: Colors.black, size: 25),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: AutoSizeText("Paramètres",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  )),
            ),
            body: Padding(
              padding: EdgeInsets.only(left: 15 , right: 10),
              child: SingleChildScrollView(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                        contentPadding: EdgeInsets.zero,
                      title: AutoSizeText(
                        "Informations personnels" ,
                        style: TextStyle(
                          fontSize: 16 ,
                          color: Colors.black ,
                          fontWeight: FontWeight.w600

                        ),
                      ),
                      trailing: defaultTexButton(
                          function: (){
                            cubit.showModal(context);
                          },
                          text: "Modifier" ,
                          textSize: 14 ,
                          textColor: Color(0xff9B9B9B),

                      )
                    ),
                    Container(
                      width: double.infinity,
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                  "Nom complet" ,
                                  style: TextStyle(
                                    fontSize: 14 ,
                                    fontWeight: FontWeight.w400 ,
                                    color: Color(0xff9B9B9B),
                                  ),
                              ) ,
                              SizedBox(height: 5,),
                              AutoSizeText(
                                "Matilda Brown" ,
                                style: TextStyle(
                                  fontSize: 14 ,
                                  fontWeight: FontWeight.w400 ,
                                  color: Colors.black,
                                ),
                              ) ,

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Numéro de téléphone" ,
                                style: TextStyle(
                                  fontSize: 14 ,
                                  fontWeight: FontWeight.w400 ,
                                  color: Color(0xff9B9B9B),
                                ),
                              ) ,
                              SizedBox(height: 5,),
                              AutoSizeText(
                                "06666666" ,
                                style: TextStyle(
                                  fontSize: 14 ,
                                  fontWeight: FontWeight.w400 ,
                                  color: Colors.black,
                                ),
                              ) ,

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Adresse mail" ,
                                style: TextStyle(
                                  fontSize: 14 ,
                                  fontWeight: FontWeight.w400 ,
                                  color: Color(0xff9B9B9B),
                                ),
                              ) ,
                              SizedBox(height: 5,),
                              AutoSizeText(
                                "matildabrown@mail.com" ,
                                style: TextStyle(
                                  fontSize: 14 ,
                                  fontWeight: FontWeight.w400 ,
                                  color: Colors.black,
                                ),
                              ) ,

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: AutoSizeText(
                          "Mot de passe" ,
                          style: TextStyle(
                            fontSize: 16 ,
                              fontWeight: FontWeight.w600

                          ),
                        ),
                        trailing: defaultTexButton(
                          function: (){
                            cubit.ChangePassword(context);
                          },
                          text: "Changer" ,
                          textSize: 14 ,
                          textColor: Color(0xff9B9B9B),

                        )
                    ),
                    Container(
                      width: double.infinity,
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Mot de passe" ,
                                style: TextStyle(
                                  fontSize: 14 ,
                                  fontWeight: FontWeight.w400 ,
                                  color: Color(0xff9B9B9B),
                                ),
                              ) ,
                              AutoSizeText(
                                "***************" ,
                                style: TextStyle(

                                  fontSize: 14 ,
                                  fontWeight: FontWeight.w400 ,
                                  color: Colors.black,
                                ),
                              ) ,

                            ],
                          ),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AutoSizeText(
                        "Notifications" ,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16 ,
                          color: Colors.black ,
                          fontWeight: FontWeight.w600

                      ),
                    ),
                    SizedBox(height :10),
                    ListTile(
                        contentPadding: EdgeInsets.zero,
                      title: AutoSizeText(
                        "Soldes" ,
                        style: TextStyle(
                            fontSize: 14 ,
                            color: Colors.black ,
                          fontWeight: FontWeight.w400

                        ),
                      ),
                      trailing: Switch(
                        activeColor: Color(0xff2AA952),
                        value: true,
                        onChanged: (bool value) {  },

                      )
                    ),
                    ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: AutoSizeText(
                          "Nouvel arrivage" ,
                          style: TextStyle(
                              fontSize: 14 ,
                              color: Colors.black ,
                              fontWeight: FontWeight.w400

                          ),
                        ),
                        trailing: Switch(
                          activeColor: Color(0xff2AA952),
                          value: true,
                          onChanged: (bool value) {  },

                        )
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                        title: AutoSizeText(
                          "Autre" ,
                          style: TextStyle(
                              fontSize: 14 ,
                              color: Colors.black ,
                              fontWeight: FontWeight.w400

                          ),
                        ),
                        trailing: Switch(
                          activeColor: Color(0xff2AA952),
                          value: false,
                          onChanged: (bool value) {  },

                        )
                    ),


                  ],
                ),
              ),

            ),
          );
        }, listener: (BuildContext context, AccountStates state) {  },
      ),
    );
  }
}
