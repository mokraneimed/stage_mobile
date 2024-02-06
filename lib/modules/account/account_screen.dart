import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/modules/account/address_sreen.dart';
import 'package:marketplace_version_mobile/modules/account/payment_screen.dart';
import 'package:marketplace_version_mobile/modules/account/settings_screen.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountCubit(),
      child: BlocConsumer<AccountCubit, AccountStates>(
        builder: (BuildContext context, state) {
          var cubit = AccountCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_rounded,
                    color: Colors.black, size: 25),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: AutoSizeText("Mon profil",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  )),
            ),
            body: Padding(
              padding: EdgeInsets.only(left: 15, right: 10),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundImage:
                            Image.asset('assets/images/img_4.png').image,
                        radius: 25,
                      ),
                      title: AutoSizeText(
                        "Matilda Brown",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      subtitle: AutoSizeText(
                        "matildabrown@mail.com",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    cubit.is_seller
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: AutoSizeText(
                                  "Profil de l'entreprise",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded,
                                      color: Colors.black, size: 18),
                                  onPressed: () {},
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: AutoSizeText(
                                  "Mes produits",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_rounded,
                                      color: Colors.black, size: 18),
                                  onPressed: () {},
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                            ],
                          )
                        : Container(),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AutoSizeText(
                        "Mes commandes",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      subtitle: AutoSizeText(
                        'Vous avez dèja 4 commandes',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.black, size: 18),
                        onPressed: () {},
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AutoSizeText(
                        "Adresses de livraison",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      subtitle: AutoSizeText(
                        '3 adresses',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.black, size: 18),
                        onPressed: () {
                          navPush(context, AddressScreen());
                        },
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AutoSizeText(
                        "Méthodes de payement",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      subtitle: AutoSizeText(
                        'EDAHABIA Card',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.black, size: 18),
                        onPressed: () {
                          navPush(context, PaymentScreen());
                        },
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AutoSizeText(
                        "Codes promos",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      subtitle: AutoSizeText(
                        'Vous avez un spécial code promo',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.black, size: 18),
                        onPressed: () {},
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AutoSizeText(
                        "Liste des favoris",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      subtitle: AutoSizeText(
                        '4 produits',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.black, size: 18),
                        onPressed: () {},
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AutoSizeText(
                        "Paramètres",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      subtitle: AutoSizeText(
                        'Notifications, mot de passe ...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.black, size: 18),
                        onPressed: () {
                          navPush(context, SettingsScreen());
                        },
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (BuildContext context, state) {},
      ),
    );
  }
}
