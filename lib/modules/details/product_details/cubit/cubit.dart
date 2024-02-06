import 'package:auto_size_text/auto_size_text.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace_version_mobile/layout/cubit/states.dart';
import 'package:marketplace_version_mobile/modules/account/account_screen.dart';
import 'package:marketplace_version_mobile/modules/details/product_details/cubit/states.dart';
import 'package:marketplace_version_mobile/modules/favorites/favorites_screen.dart';
import 'package:marketplace_version_mobile/modules/home/home_screen.dart';
import 'package:marketplace_version_mobile/modules/messages/messages_screen.dart';
import 'package:marketplace_version_mobile/modules/ordres/ordres_screen.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';
import 'package:marketplace_version_mobile/shared/style/colors.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsStates> {
  ProductDetailsCubit() : super(ProductDetailsInitialState());

  static ProductDetailsCubit get(context) => BlocProvider.of(context);

  int curentIndex = 0;
  double width = 12;
  double height = 12;
  bool dropDownVisibility = false;
  IconData dropDownIcon = Icons.keyboard_arrow_down_outlined;

  void dropDown() {
    dropDownVisibility = !dropDownVisibility;
    if (dropDownVisibility)
      dropDownIcon = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility1 = false;
  IconData dropDownIcon1 = Icons.keyboard_arrow_down_outlined;

  void dropDown1() {
    dropDownVisibility1 = !dropDownVisibility1;
    if (dropDownVisibility1)
      dropDownIcon1 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon1 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility2 = false;
  IconData dropDownIcon2 = Icons.keyboard_arrow_down_outlined;

  void dropDown2() {
    dropDownVisibility2 = !dropDownVisibility2;
    if (dropDownVisibility2)
      dropDownIcon2 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon2 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility3 = false;
  IconData dropDownIcon3 = Icons.keyboard_arrow_down_outlined;

  void dropDown3() {
    dropDownVisibility3 = !dropDownVisibility3;
    if (dropDownVisibility3)
      dropDownIcon3 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon3 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility4 = false;
  IconData dropDownIcon4 = Icons.keyboard_arrow_down_outlined;

  void dropDown4() {
    dropDownVisibility4 = !dropDownVisibility4;
    if (dropDownVisibility4)
      dropDownIcon4 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon4 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility5 = false;
  IconData dropDownIcon5 = Icons.keyboard_arrow_down_outlined;

  void dropDown5() {
    dropDownVisibility5 = !dropDownVisibility5;
    if (dropDownVisibility5)
      dropDownIcon5 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon5 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility6 = false;
  IconData dropDownIcon6 = Icons.keyboard_arrow_down_outlined;

  void dropDown6() {
    dropDownVisibility6 = !dropDownVisibility6;
    if (dropDownVisibility6)
      dropDownIcon6 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon6 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility7 = false;
  IconData dropDownIcon7 = Icons.keyboard_arrow_down_outlined;

  void dropDown7() {
    dropDownVisibility7 = !dropDownVisibility7;
    if (dropDownVisibility7)
      dropDownIcon7 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon7 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility8 = false;
  IconData dropDownIcon8 = Icons.keyboard_arrow_down_outlined;

  void dropDown8() {
    dropDownVisibility8 = !dropDownVisibility8;
    if (dropDownVisibility8)
      dropDownIcon8 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon8 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility9 = false;
  IconData dropDownIcon9 = Icons.keyboard_arrow_down_outlined;

  void dropDown9() {
    dropDownVisibility9 = !dropDownVisibility9;
    if (dropDownVisibility9)
      dropDownIcon9 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon9 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility10 = false;
  IconData dropDownIcon10 = Icons.keyboard_arrow_down_outlined;

  void dropDown10() {
    dropDownVisibility10 = !dropDownVisibility10;
    if (dropDownVisibility10)
      dropDownIcon10 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon10 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility11 = false;
  IconData dropDownIcon11 = Icons.keyboard_arrow_down_outlined;

  void dropDown11() {
    dropDownVisibility11 = !dropDownVisibility11;
    if (dropDownVisibility11)
      dropDownIcon11 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon11 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility12 = false;
  IconData dropDownIcon12 = Icons.keyboard_arrow_down_outlined;

  void dropDown12() {
    dropDownVisibility12 = !dropDownVisibility12;
    if (dropDownVisibility12)
      dropDownIcon12 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon12 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility13 = false;
  IconData dropDownIcon13 = Icons.keyboard_arrow_down_outlined;

  void dropDown13() {
    dropDownVisibility13 = !dropDownVisibility13;
    if (dropDownVisibility13)
      dropDownIcon13 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon13 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility14 = false;
  IconData dropDownIcon14 = Icons.keyboard_arrow_down_outlined;

  void dropDown14() {
    dropDownVisibility14 = !dropDownVisibility14;
    if (dropDownVisibility14)
      dropDownIcon14 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon14 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }

  bool dropDownVisibility15 = false;
  IconData dropDownIcon15 = Icons.keyboard_arrow_down_outlined;

  void dropDown15() {
    dropDownVisibility15 = !dropDownVisibility15;
    if (dropDownVisibility15)
      dropDownIcon15 = Icons.keyboard_arrow_up_outlined;
    else
      dropDownIcon15 = Icons.keyboard_arrow_down_outlined;
    emit(ProductDetailsDropDownState());
  }


  bool tabBarVisibility0 = true;
  bool tabBarVisibility1 = false;

  void ChangeTabBarVisibility(value){
    if (value == 0){
      tabBarVisibility0 = true;
      tabBarVisibility1 = false;
    }else {
      tabBarVisibility0 = false;
      tabBarVisibility1 = true;
    }
    emit(changeState());
  }


  void onSlideChange(index) {
    curentIndex = index;
    emit(ProductDetailsOnSliderChangeState());
  }

  Future showModal(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Air Liquide',
                          style: TextStyle(fontSize: 13),
                        ),
                        Spacer(),
                        Image(
                          image: AssetImage('assets/images/img_2.png'),
                          width: 30.w,
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          '12 years',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Score : ',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '4.6',
                                        style: TextStyle(
                                            color: defaultColor, fontSize: 13,),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: defaultColor,
                                        size: 20,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Temps de réponse :',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '≤6 heures',
                                        style: TextStyle(
                                            color: defaultColor, fontSize: 13),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Marchés principaux :',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'North Africa, Europe ...',
                                    style: TextStyle(
                                        color: defaultColor, fontSize: 13),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Taux de livraison à temps :',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Text(
                                    '100%',
                                    style: TextStyle(
                                        color: defaultColor, fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Revenue en ligne :',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '+ \$30,000',
                                        style: TextStyle(
                                            color: defaultColor, fontSize: 13),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cerification :',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    'Certification',
                                    style: TextStyle(
                                        color: defaultColor,
                                        fontSize: 13,
                                        decoration: TextDecoration.underline),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: defaultButton(
                              context: context,
                              function: () {},
                              text: 'Profil de L\'entreprise',
                              textSize: 10,
                              isUpperCase: false,
                              radius: 5,
                              height: 40),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: defaultButton(
                              context: context,
                              function: () {},
                              text: 'Visiter la boutisue',
                              textSize: 10,
                              isUpperCase: false,
                              radius: 5,
                              height: 40),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );

  Future FicheTechnique(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
        shape : RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * .7,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        AutoSizeText(
                            "Fiche technique" ,
                            style: TextStyle(
                              fontSize: 15 ,
                              fontWeight: FontWeight.w600 ,
                              color: Color(0xff666666),
                            ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: ()=>Navigator.pop(context),
                            icon: Icon(Icons.clear , color: Colors.black,),
                        ),

                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Industries Applicables :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Usine de fabrication, Travaux de construction" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Type :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Chargeur frontale" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Poids de la machine :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "0-17250 kg" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Marque de la pompe hydraulique :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Autre" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Puissance :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Autre" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Inspection sortante par vidéo :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Fournie" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Année :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "2020" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Nom du produit :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Loader" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Marque :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "China Brand" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Moteur :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Moteur Diesel d'Origine" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Capacité de charge :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "5-6 TONNES" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Puissance nominale :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "160kw" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Certification :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "FCC,CE,RoHs" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Lieu d'origine :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Chine" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Emplacement de la salle d'exposition :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Aucun" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Charge nominale :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "5 tonnes" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Marque du moteur :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "WEICHAI" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Rapport d'essai de la machine :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Fourni" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Composants principaux :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Moteur,autre,Pompe,Engine" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Heures de travail :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "2001-4000H" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Modèle :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "LG956L" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Couleur :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Jaune" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Capacité du godet :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "2,7m3" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "Emplacement :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "Shandong, Chine" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: AutoSizeText(
                              "MQQ (Quantité minimum de commande) :" ,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Color(0xff666666),
                              ),
                            )
                        ),
                        Expanded(
                            child: AutoSizeText(
                              "1 unité" ,
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13 ,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ) ,
                    SizedBox(height: 5.h),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 5.h),

                  ],
                ),
              ),
            ),
          );
        }
    );
  }


  Future ProfilEntreprise(BuildContext context) {
    return showModalBottomSheet(
        shape : RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      AutoSizeText(
                        "Informations de l'entreprise" ,
                        style: TextStyle(
                          fontSize: 15 ,
                          fontWeight: FontWeight.w600 ,
                          color: Color(0xff666666),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: ()=>Navigator.pop(context),
                        icon: Icon(Icons.clear , color: Colors.black,),
                      ),

                    ],
                  ),
                  SizedBox(height: 30.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Nom de l'entreprise :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "Company name" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Pays/région :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "Chine" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Adresse :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "Manufactoring city street 19th" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Ville :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "Bekin" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Code postal :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "Company name" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Site de l'entreprise :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "https://company" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Téléphone :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "0556490358" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Fax :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "02465971632" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Année de création :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "2010" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Type de l'entreprise :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "SARL" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: AutoSizeText(
                            "Nombre d'employées :" ,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Color(0xff666666),
                            ),
                          )
                      ),
                      Expanded(
                          child: AutoSizeText(
                            "10000" ,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 13 ,
                              color: Colors.black,
                            ),
                          )
                      ),

                    ],
                  ) ,
                  SizedBox(height: 5.h),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                ],
              ),
            ),
          );
        }
    );
  }

  // List<Widget> screensList = [
  //   HomeScreen(),
  //   FavoritesScreen(),
  //   MessagesScreen(),
  //   OrdresScreen(),
  //   AccountScreen(),
  // ];

  // void ChangeButtomNavItem(value){
  //   index = value;
  //   emit(HomeChangeBottomNavState());
  // }

  bool isFav = false;
  IconData favIcon = Icons.favorite_border_outlined;

// void AddToFav(){
//   isFav = !isFav;
//   if (isFav)
//     favIcon = Icons.favorite;
//   else favIcon = Icons.favorite_border_outlined;
//   print(isFav);
//   emit(HomeAddToFavChangeIcon());
// }
}
