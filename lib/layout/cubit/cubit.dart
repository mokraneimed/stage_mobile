import 'package:auto_size_text/auto_size_text.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/layout/cubit/states.dart';
import 'package:marketplace_version_mobile/modules/account/account_screen.dart';
import 'package:marketplace_version_mobile/modules/favorites/favorites_screen.dart';
import 'package:marketplace_version_mobile/modules/home/home_screen.dart';
import 'package:marketplace_version_mobile/modules/messages/messages_screen.dart';
import 'package:marketplace_version_mobile/modules/ordres/ordres_screen.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int index = 0;
  bool is_grid = true;

  bool edit = false;

  bool? is_checked = false;

  IconData gridIcon = Icons.list;
  List<Widget> screensList = [
    HomeScreen(),
    FavoritesScreen(),
    MessagesScreen(),
    OrdresScreen(),
    AccountScreen(),
  ];

  void ChangeButtomNavItem(value) {
    index = value;
    emit(HomeChangeBottomNavState());
  }

  bool isFav = false;
  IconData favIcon = Icons.favorite_border_outlined;

  void AddToFav() {
    isFav = !isFav;
    if (isFav)
      favIcon = Icons.favorite;
    else
      favIcon = Icons.favorite_border_outlined;
    print(isFav);
    emit(HomeAddToFavChangeIcon());
  }

  void RerangeProduct() {
    is_grid = !is_grid;
    gridIcon = !is_grid ? Icons.grid_view_rounded : Icons.list;
    emit(HomeRerangeFavorisProductState());
  }

  void EditFavorisList() {
    edit = true;

    emit(HomeEditFavorisListState());
  }

  void Check_item(bool? value) {
    is_checked = value;
    emit(HomeEditFavorisListState());
  }

  void EndDelete() {
    is_checked = false;
    edit = false;

    emit(DeleteFavorisProductState());
  }

  Future? showModal(BuildContext context) {
    return is_checked!
        ? showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AutoSizeText(
                        "Voulez vous vraiment supprimer ces produits",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          defaultTexButton(
                              function: () {
                                EndDelete();
                                Navigator.pop(context);
                              },
                              text: "Oui",
                              textSize: 14),
                          defaultTexButton(
                              function: () {
                                EndDelete();
                                Navigator.pop(context);
                              },
                              text: "Non",
                              textSize: 14),
                        ],
                      )
                    ],
                  ),
                ),
              );
            })
        : null;
  }

  List adrList = [
    'Address',
    'Address',
    'Address',
  ];

  void addAddress(value) {
    adrList.add(value);
    emit(HomeAddAddressState());
  }

  List payList = [
    'Carte',
    'Carte',
    'Carte',
  ];

  void addPay(value) {
    adrList.add(value);
    emit(HomeAddPayementState());
  }
}
