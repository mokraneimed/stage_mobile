import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace_version_mobile/modules/details/product_details/cubit/cubit.dart';
import 'package:marketplace_version_mobile/modules/details/product_details/cubit/states.dart';
import 'package:marketplace_version_mobile/shared/style/colors.dart';
import '../../../shared/components/components.dart';

class ProductDetailsScreen extends StatelessWidget {
  var searchController = TextEditingController();
  CarouselController carouselController = CarouselController();

  List<Widget> imgList = [
    Image(
      image: AssetImage('assets/images/img_3.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/pan.jpeg'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_3.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/pan.jpeg'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> imgList2 = [
    Image(
      image: AssetImage('assets/images/img_7.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_7.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_7.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_7.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> imgList3 = [
    Image(
      image: AssetImage('assets/images/img_8.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_3.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_8.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_3.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> imgList4 = [
    Image(
      image: AssetImage('assets/images/img_9.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_9.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_9.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_9.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> imgList5 = [
    Image(
      image: AssetImage('assets/images/img_11.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_11.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_11.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_11.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> imgList6 = [
    Image(
      image: AssetImage('assets/images/img_10.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_10.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_10.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_10.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> imgList7 = [
    Image(
      image: AssetImage('assets/images/img_12.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_12.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_12.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_12.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> imgList8 = [
    Image(
      image: AssetImage('assets/images/img_13.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_13.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_13.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_13.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> imgList9 = [
    Image(
      image: AssetImage('assets/images/img_14.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_14.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_14.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: AssetImage('assets/images/img_14.png'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];
  List<Widget> Paiement = [
    Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 25.w,
        height: 16.h,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: .4),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image(
          image: AssetImage('assets/images/img_1.png'),
          // fit: BoxFit.f,
          width: 20.w,
          height: 15.w,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 25.w,
        height: 16.h,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: .4),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image(
          image: AssetImage('assets/images/img_1.png'),
          // fit: BoxFit.f,
          width: 20.w,
          height: 15.w,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 25.w,
        height: 16.h,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: .4),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image(
          image: AssetImage('assets/images/img_1.png'),
          // fit: BoxFit.f,
          width: 20.w,
          height: 15.w,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 25.w,
        height: 16.h,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: .4),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image(
          image: AssetImage('assets/images/img_1.png'),
          // fit: BoxFit.f,
          width: 20.w,
          height: 15.w,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 25.w,
        height: 16.h,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: .4),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image(
          image: AssetImage('assets/images/img_1.png'),
          // fit: BoxFit.f,
          width: 20.w,
          height: 15.w,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(),
      child: BlocConsumer<ProductDetailsCubit, ProductDetailsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var media = MediaQuery.of(context);
          var cubit = ProductDetailsCubit.get(context);
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        //fit: StackFit.loose,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .4,
                            child: CarouselSlider(
                              carouselController: carouselController,
                              items: imgList,
                              options: CarouselOptions(
                                onPageChanged: (index, reason) {
                                  cubit.onSlideChange(index);
                                },
                                height: MediaQuery.of(context).size.height * .4,
                                initialPage: cubit.curentIndex,
                                viewportFraction: 1,
                                reverse: false,
                                aspectRatio: 1,
//>>>>>>> Aymen
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  //clipBehavior: Clip.antiAliasWithSaveLayer,
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: IconButton(
                                      onPressed: () => Navigator.pop(context),
                                      icon: Icon(
                                        Icons.arrow_back_ios_outlined,
                                        color: Colors.white,
                                      ),
                                    )),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * .7,
                                  height: 45,
                                  child: defaultFormField(
                                    filled: true,
                                    fillColor: Colors.black54,
                                    labelColor: Colors.white,
                                    controller: searchController,
                                    type: TextInputType.text,
                                    label: 'Macbook Pro M2',
                                    //prefIcon: prefIcon,
                                    suffIcon: Icons.search_outlined,
                                    radius: 25,
                                    validate: (value) {},
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Container(
                                  //clipBehavior: Clip.antiAliasWithSaveLayer,
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.share,
                                        color: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 1,
                            height: 10.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imgList.asMap().entries.map((entry) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  child: InkWell(
                                    //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                    child: Container(
                                      width: cubit.curentIndex == entry.key
                                          ? 18
                                          : 12.0,
                                      height: cubit.curentIndex == entry.key
                                          ? 7
                                          : 4.0,
                                      //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(50),
                                          color: cubit.curentIndex == entry.key
                                              ? Colors.black
                                              : Colors.grey),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SDLG 956L Looder',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          'Reporter',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border_outlined,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1 - 4 units',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.grey),
                                        maxLines: 1,
                                      ),
                                      Text(
                                        '\$11,800.00',
                                        style: TextStyle(
                                            fontSize: 15.sp, color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1 - 4 units',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.grey),
                                        maxLines: 1,
                                      ),
                                      Text(
                                        '\$10,300.00',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '>9 units',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.grey),
                                        maxLines: 1,
                                      ),
                                      Text(
                                        '\$8,400.00',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  'Numéro de modèle : ',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  'SDLG 956L',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Divider(
                              thickness: 1,
                            ),
                            SizedBox(height: 5.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Délai de livraison : ',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Quantité ( unitées )',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          '1-2',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          '>2',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Durée ( Jours )',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          '25',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          'A négocier',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold,
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.grey),
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Divider(
                              thickness: 1,
                            ),
                            //SizedBox(height: 5.h),
                            InkWell(
                              onTap: () => cubit.dropDown(),
                              child: Column(
                                children: [
                                  Container(
                                    height: 30.h,
                                    child: Row(
                                      children: [
                                        Text(
                                          'Détail d\'achat',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Icon(
                                          cubit.dropDownIcon,
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Visibility(
                                    visible: cubit.dropDownVisibility,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Expédition :',
                                                maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Contactez le fournisseur pour plus d’informations',
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Paiement :',
                                                maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Expanded(
                                                child: Row(
                                                  children: Paiement,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  'Retours et Remboursements',
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    fontSize: 11.sp,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  'Pour les commandes non reçues, manquantes ou tout autre problème lié aux produits. Voir details',
                                                  maxLines: 3,
                                                  style: TextStyle(
                                                    fontSize: 11.sp,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: InkWell(
                          onTap: () => cubit.showModal(context),
                          child: Column(
                            children: [
                              Container(
                                height: 30.h,
                                child: Row(
                                  children: [
                                    Text(
                                      'Info seller',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Container(
                          height: 30.h,
                          child: Row(
                            children: [
                              Text(
                                'Autres annonces',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: ListView.separated(
                            scrollDirection: axisDirectionToAxis(
                                flipAxisDirection(AxisDirection.right)),
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) =>
                                buildListItem(false, media, context, index),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10),
                            itemCount: 5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 6,
                        ),
                      ),
                      DefaultTabController(
                        length: 2,
                        child: Column(
                          children: [
                            TabBar(
                              onTap: (value) {
                                cubit.ChangeTabBarVisibility(value);
                              },
                              tabs: [
                                Tab(
                                    child: Text(
                                      'Detail du produit',
                                      style: TextStyle(),
                                    )),
                                Tab(child: Text('Profil de l’entreprise')),
                              ],
                              unselectedLabelColor: Colors.black,
                              labelColor: defaultColor,
                            ),
                            Visibility(
                              visible: cubit.tabBarVisibility0,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Informations du produit',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Vue de l\'ensemble ',
                                            style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          InkWell(

                                            onTap:() => cubit.FicheTechnique(context),

                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Fiche tequnique',
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 15.w,
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    size: 25,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: InkWell(
                                              onTap: () => cubit.dropDown1(),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 30.h,
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Capacite d’approvisionnement',
                                                          style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 15.w,
                                                        ),
                                                        Icon(
                                                          cubit.dropDownIcon1,
                                                          size: 30,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: cubit
                                                        .dropDownVisibility1,
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0,
                                                          top: 8),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Capacité d\'approvisionnement :',
                                                                  maxLines: 2,
                                                                  style:
                                                                  TextStyle(
                                                                    fontSize:
                                                                    12.sp,
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 10.w,
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  '10 Unitée/Unitées par semaine',
                                                                  maxLines: 2,
                                                                  style:
                                                                  TextStyle(
                                                                    fontSize:
                                                                    12.sp,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 8.h,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Modalité de paiement :',
                                                                  maxLines: 2,
                                                                  style:
                                                                  TextStyle(
                                                                    fontSize:
                                                                    12.sp,
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 10.w,
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  'L/A, T/T, D/A',
                                                                  maxLines: 3,
                                                                  style:
                                                                  TextStyle(
                                                                    fontSize:
                                                                    12.sp,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: InkWell(
                                              onTap: () => cubit.dropDown2(),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 30.h,
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Embalage et livraison',
                                                          style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 15.w,
                                                        ),
                                                        Icon(
                                                          cubit.dropDownIcon2,
                                                          size: 30,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: cubit
                                                        .dropDownVisibility2,
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .only(
                                                              left: 10.0,
                                                              top: 8),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Port :',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        12.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'SHANGHAI',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        12.sp,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                        overflow:
                                                                        TextOverflow.ellipsis,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 8.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Mode logistique :',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        12.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'Transport maritime, Transport routier',
                                                                      maxLines:
                                                                      3,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        12.sp,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                        overflow:
                                                                        TextOverflow.ellipsis,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 8.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Délai de livrison :',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        12.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Column(
                                                                        children: [
                                                                          Text(
                                                                            'Quantité ( unitées )',
                                                                            style:
                                                                            TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.bold,
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                            maxLines:
                                                                            1,
                                                                          ),
                                                                          Text(
                                                                            '1-2',
                                                                            style:
                                                                            TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.bold,
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                            maxLines:
                                                                            1,
                                                                          ),
                                                                          Text(
                                                                            '>2',
                                                                            style:
                                                                            TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.bold,
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                            maxLines:
                                                                            1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                        25.w,
                                                                      ),
                                                                      Column(
                                                                        children: [
                                                                          Text(
                                                                            'Durée ( Jours )',
                                                                            style:
                                                                            TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.bold,
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                            maxLines:
                                                                            1,
                                                                          ),
                                                                          Text(
                                                                            '25',
                                                                            style:
                                                                            TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.bold,
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                            maxLines:
                                                                            1,
                                                                          ),
                                                                          Text(
                                                                            'A négocier',
                                                                            style:
                                                                            TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.bold,
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                            maxLines:
                                                                            1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 8.h,
                                                              ),
                                                              Text(
                                                                'Description d’emballage :',
                                                                maxLines: 2,
                                                                style:
                                                                TextStyle(
                                                                  fontSize:
                                                                  12.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 8.h),
                                                        Container(
                                                          height: 300,
                                                          child: CarouselSlider(
                                                            carouselController:
                                                            carouselController,
                                                            items: imgList2,
                                                            options:
                                                            CarouselOptions(
                                                              onPageChanged:
                                                                  (index,
                                                                  reason) {
                                                                cubit
                                                                    .onSlideChange(
                                                                    index);
                                                              },
                                                              height: 300,
                                                              initialPage: cubit
                                                                  .curentIndex,
                                                              viewportFraction:
                                                              1,
                                                              reverse: false,
                                                              aspectRatio: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          children: imgList
                                                              .asMap()
                                                              .entries
                                                              .map((entry) {
                                                            return Padding(
                                                              padding: const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                  2.0),
                                                              child: InkWell(
                                                                //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                                                child:
                                                                Container(
                                                                  width: cubit.curentIndex ==
                                                                      entry
                                                                          .key
                                                                      ? 18
                                                                      : 12.0,
                                                                  height: cubit
                                                                      .curentIndex ==
                                                                      entry
                                                                          .key
                                                                      ? 7
                                                                      : 4.0,
                                                                  //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                      BorderRadius.circular(
                                                                          50),
                                                                      color: cubit.curentIndex ==
                                                                          entry
                                                                              .key
                                                                          ? Colors
                                                                          .black
                                                                          : Colors
                                                                          .grey),
                                                                ),
                                                              ),
                                                            );
                                                          }).toList(),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Text(
                                                          'Lorem ipsum dolor sit amet. 33 magni recusandae At molestias eius et dolorem temporibus est sunt autem qui possimus distinctio aut ipsum magnam. Et consectetur nihil est harum atque ex porro sequi sit ',
                                                          style: TextStyle(
                                                            overflow:
                                                            TextOverflow
                                                                .visible,
                                                            color: Colors.grey,
                                                            fontSize: 11.sp,
                                                            fontWeight:
                                                            FontWeight.w900,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: cubit.tabBarVisibility1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, bottom: 5, top: 5),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 30.h,
                                          child: InkWell(
                                            onTap: () => cubit.dropDown8(),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Profil de l’entreprise',
                                                  style: TextStyle(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                Icon(
                                                  cubit.dropDownIcon8,
                                                  size: 30,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: cubit.dropDownVisibility8,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  onTap:() => cubit.ProfilEntreprise(context),

                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Informations de l’entreprise',
                                                        style: TextStyle(
                                                          fontSize: 11.sp,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 15.w,
                                                      ),
                                                      Icon(
                                                        Icons.arrow_forward,
                                                        size: 25,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Divider(
                                                  thickness: 1,
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                InkWell(
                                                  onTap: () =>
                                                      cubit.dropDown4(),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 30.h,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Informations Contact',
                                                              style: TextStyle(
                                                                fontSize: 11.sp,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 15.w,
                                                            ),
                                                            Icon(
                                                              cubit
                                                                  .dropDownIcon4,
                                                              size: 30,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Visibility(
                                                        visible: cubit
                                                            .dropDownVisibility4,
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .only(
                                                              left: 10.0,
                                                              top: 8),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Contact légal :',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        11.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'Usine de fabrication, Travaux de construction',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        10.sp,
                                                                        overflow:
                                                                        TextOverflow.ellipsis,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Téléphone : ',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        11.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'Chine',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        10.sp,
                                                                        overflow:
                                                                        TextOverflow.ellipsis,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Email :',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        11.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'Chargeuse frontale',
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        10.sp,
                                                                        overflow:
                                                                        TextOverflow.clip,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Mobile:',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        11.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'Aucun',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                          10.sp),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Divider(
                                                  thickness: 1,
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                InkWell(
                                                  onTap: () =>
                                                      cubit.dropDown5(),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 30.h,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Informations de l’activité',
                                                              style: TextStyle(
                                                                fontSize: 11.sp,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 15.w,
                                                            ),
                                                            Icon(
                                                              cubit
                                                                  .dropDownIcon5,
                                                              size: 30,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Visibility(
                                                        visible: cubit
                                                            .dropDownVisibility5,
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .only(
                                                              left: 10.0,
                                                              top: 8),
                                                          child: Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Secteur d’activité :',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        11.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'Industry',
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        10.sp,
                                                                        overflow:
                                                                        TextOverflow.clip,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Row(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'Description de l’entreprise :',
                                                                      maxLines:
                                                                      2,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        11.sp,
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                        FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'Lorem ipsum dolor sit amet. 33 magni recusandae At molestias eius et dolorem temporibus est sunt autem qui possimus distinctio aut ipsum magnam. Et consectetur nihil est harum atque ex porro sequi sit  ',
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        10.sp,
                                                                        overflow:
                                                                        TextOverflow.clip,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Divider(
                                                  thickness: 1,
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                InkWell(
                                                  onTap: () =>
                                                      cubit.dropDown6(),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 30.h,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Présentation de l’entreprise',
                                                              style: TextStyle(
                                                                fontSize: 11.sp,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 15.w,
                                                            ),
                                                            Icon(
                                                              cubit
                                                                  .dropDownIcon6,
                                                              size: 30,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Visibility(
                                                        visible: cubit
                                                            .dropDownVisibility6,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                                height: 8.h),
                                                            Container(
                                                              height: 300,
                                                              child:
                                                              CarouselSlider(
                                                                carouselController:
                                                                carouselController,
                                                                items: imgList4,
                                                                options:
                                                                CarouselOptions(
                                                                  onPageChanged:
                                                                      (index,
                                                                      reason) {
                                                                    cubit.onSlideChange(
                                                                        index);
                                                                  },
                                                                  height: 300,
                                                                  initialPage: cubit
                                                                      .curentIndex,
                                                                  viewportFraction:
                                                                  1,
                                                                  reverse:
                                                                  false,
                                                                  aspectRatio:
                                                                  1,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              children: imgList
                                                                  .asMap()
                                                                  .entries
                                                                  .map((entry) {
                                                                return Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                      2.0),
                                                                  child:
                                                                  InkWell(
                                                                    //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                                                    child:
                                                                    Container(
                                                                      width: cubit.curentIndex ==
                                                                          entry.key
                                                                          ? 18
                                                                          : 12.0,
                                                                      height: cubit.curentIndex ==
                                                                          entry.key
                                                                          ? 7
                                                                          : 4.0,
                                                                      //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                              50),
                                                                          color: cubit.curentIndex == entry.key
                                                                              ? Colors.black
                                                                              : Colors.grey),
                                                                    ),
                                                                  ),
                                                                );
                                                              }).toList(),
                                                            ),
                                                            SizedBox(
                                                              height: 6.h,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Divider(
                                                  thickness: 1,
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                InkWell(
                                                  onTap: () =>
                                                      cubit.dropDown7(),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 30.h,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Exposition',
                                                              style: TextStyle(
                                                                fontSize: 11.sp,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 15.w,
                                                            ),
                                                            Icon(
                                                              cubit
                                                                  .dropDownIcon7,
                                                              size: 30,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Visibility(
                                                        visible: cubit
                                                            .dropDownVisibility7,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Text(
                                                                    'Nom du salon :',
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      11.sp,
                                                                      color: Colors
                                                                          .grey,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 5.w,
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'Salon name',
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      10.sp,
                                                                      overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Text(
                                                                    'Pays/région :',
                                                                    maxLines: 2,
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      11.sp,
                                                                      color: Colors
                                                                          .grey,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 5.w,
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'China',
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      10.sp,
                                                                      overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Text(
                                                                    'Année:',
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      11.sp,
                                                                      color: Colors
                                                                          .grey,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 5.w,
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    '2019',
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      10.sp,
                                                                      overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Text(
                                                                    'Description :',
                                                                    maxLines: 2,
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      11.sp,
                                                                      color: Colors
                                                                          .grey,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 5.w,
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'Lorem ipsum dolor sit amet. 33 magni recusandae At molestias eius et dolorem temporibus est sunt autem qui possimus distinctio aut ipsum magnam. Et consectetur nihil est harum atque ex porro sequi sit ',
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      10.sp,
                                                                      overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Text(
                                                              'Photos :',
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                fontSize: 11.sp,
                                                                color:
                                                                Colors.grey,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Column(
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                    8.h),
                                                                Container(
                                                                  height: 370,
                                                                  child:
                                                                  CarouselSlider(
                                                                    carouselController:
                                                                    carouselController,
                                                                    items:
                                                                    imgList6,
                                                                    options:
                                                                    CarouselOptions(
                                                                      onPageChanged:
                                                                          (index,
                                                                          reason) {
                                                                        cubit.onSlideChange(
                                                                            index);
                                                                      },
                                                                      height:
                                                                      370,
                                                                      initialPage:
                                                                      cubit
                                                                          .curentIndex,
                                                                      viewportFraction:
                                                                      1,
                                                                      reverse:
                                                                      false,
                                                                      aspectRatio:
                                                                      1,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                                  children: imgList
                                                                      .asMap()
                                                                      .entries
                                                                      .map(
                                                                          (entry) {
                                                                        return Padding(
                                                                          padding: const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal:
                                                                              2.0),
                                                                          child:
                                                                          InkWell(
                                                                            //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                                                            child:
                                                                            Container(
                                                                              width: cubit.curentIndex == entry.key
                                                                                  ? 18
                                                                                  : 12.0,
                                                                              height: cubit.curentIndex == entry.key
                                                                                  ? 7
                                                                                  : 4.0,
                                                                              //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                                                              decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(50),
                                                                                  color: cubit.curentIndex == entry.key ? Colors.black : Colors.grey),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }).toList(),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey[300],
                                    thickness: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, bottom: 5, top: 5),
                                    child: InkWell(
                                      onTap: () => cubit.dropDown9(),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 30.h,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Fabrication',
                                                  style: TextStyle(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                Icon(
                                                  cubit.dropDownIcon9,
                                                  size: 30,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Visibility(
                                            visible: cubit.dropDownVisibility9,
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Adresse usine :',
                                                          style: TextStyle(
                                                            fontSize: 11.sp,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            overflow:
                                                            TextOverflow
                                                                .clip,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          'Manufactoring city Street 19th  ',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            overflow:
                                                            TextOverflow
                                                                .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Taille de l’usine:',
                                                          style: TextStyle(
                                                            fontSize: 11.sp,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            overflow: TextOverflow.clip,

                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          '1200 m2',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            overflow:
                                                            TextOverflow
                                                                .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'No de personnel de QC:',
                                                          style: TextStyle(
                                                              fontSize: 11.sp,
                                                              color:
                                                              Colors.grey,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold,
                                                              overflow:
                                                              TextOverflow
                                                                  .clip),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          '180',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            overflow:
                                                            TextOverflow
                                                                .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'No de personnel en R&D:',
                                                          style: TextStyle(
                                                            fontSize: 11.sp,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            overflow:TextOverflow.clip,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          '160',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            overflow:
                                                            TextOverflow
                                                                .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'No de lignes de production :',
                                                          style: TextStyle(
                                                              fontSize: 11.sp,
                                                              color: Colors.grey,
                                                              fontWeight:
                                                              FontWeight.bold,
                                                              overflow: TextOverflow.clip
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          '10',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            overflow:
                                                            TextOverflow
                                                                .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Valeur de production annuelle :',
                                                          style: TextStyle(
                                                            fontSize: 11.sp,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            overflow: TextOverflow.clip,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          '1222222222',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            overflow:
                                                            TextOverflow
                                                                .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 25.h,
                                                  ),
                                                  Text(
                                                    'Photos et videos de l’usine:',
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(height: 8.h),
                                                      Container(
                                                        height: 370,
                                                        child: CarouselSlider(
                                                          carouselController:
                                                          carouselController,
                                                          items: imgList5,
                                                          options:
                                                          CarouselOptions(
                                                            onPageChanged:
                                                                (index,
                                                                reason) {
                                                              cubit
                                                                  .onSlideChange(
                                                                  index);
                                                            },
                                                            height: 370,
                                                            initialPage: cubit
                                                                .curentIndex,
                                                            viewportFraction: 1,
                                                            reverse: false,
                                                            aspectRatio: 1,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: imgList
                                                            .asMap()
                                                            .entries
                                                            .map((entry) {
                                                          return Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal:
                                                                2.0),
                                                            child: InkWell(
                                                              //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                                              child: Container(
                                                                width: cubit.curentIndex ==
                                                                    entry
                                                                        .key
                                                                    ? 18
                                                                    : 12.0,
                                                                height: cubit
                                                                    .curentIndex ==
                                                                    entry
                                                                        .key
                                                                    ? 7
                                                                    : 4.0,
                                                                //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        50),
                                                                    color: cubit.curentIndex ==
                                                                        entry
                                                                            .key
                                                                        ? Colors
                                                                        .black
                                                                        : Colors
                                                                        .grey),
                                                              ),
                                                            ),
                                                          );
                                                        }).toList(),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  InkWell(
                                                    onTap: () =>
                                                        cubit.dropDown12(),
                                                    child: Container(
                                                      height: 30.h,
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Processus de fabrication',
                                                            style: TextStyle(
                                                              fontSize: 11.sp,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 15.w,
                                                          ),
                                                          Icon(
                                                            cubit
                                                                .dropDownIcon12,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Visibility(
                                                    visible: cubit
                                                        .dropDownVisibility12,
                                                    child: Container(
                                                      //height : 300,
                                                      width: double.infinity,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15),
                                                      padding:
                                                          EdgeInsets.all(15),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfffff9cc),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(

                                                                  flex:1,

                                                                  child: Text(
                                                                    'Nom du processus :',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          9.sp,
                                                                      color: Colors
                                                                          .grey,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10.w,
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'Processus 1',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          9.sp,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Text(
                                                                    'Description :',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          9.sp,
                                                                      color: Colors
                                                                          .grey,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 10.w,
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'Lorem ipsum dolor sit amet. 33 magni recusandae At molestias eius et dolorem temporibus est sunt autem qui possimus distinctio aut ipsum magnam. Et consectetur nihil est harum atque ex porro sequi sit ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          9.sp,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .clip,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Text(
                                                              'Photos :',
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                fontSize: 11.sp,
                                                                color:
                                                                    Colors.grey,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            CarouselSlider(
                                                              carouselController:

                                                              carouselController,
                                                              items: imgList7,
                                                              options:
                                                              CarouselOptions(
                                                                onPageChanged:
                                                                    (index,
                                                                    reason) {
                                                                  cubit
                                                                      .onSlideChange(
                                                                      index);
                                                                },
                                                                height: 370,
                                                                initialPage: cubit
                                                                    .curentIndex,
                                                                viewportFraction: 1,

                                                                reverse: false,
                                                                aspectRatio: 1,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,

                                                              children: imgList
                                                                  .asMap()
                                                                  .entries
                                                                  .map((entry) {
                                                                return Padding(

                                                                  padding: const EdgeInsets
                                                                          .symmetric(
                                                                      horizontal:
                                                                          2.0),
                                                                  child:
                                                                      InkWell(
                                                                    //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                                                    child:
                                                                        Container(
                                                                      width: cubit.curentIndex ==
                                                                              entry.key
                                                                          ? 18
                                                                          : 12.0,
                                                                      height: cubit.curentIndex ==
                                                                              entry.key
                                                                          ? 7
                                                                          : 4.0,
                                                                      //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                              50),
                                                                          color: cubit.curentIndex == entry.key
                                                                              ? Colors.black
                                                                              : Colors.grey),
                                                                    ),
                                                                  ),
                                                                );
                                                              }).toList(),
                                                            ),
                                                          ]),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey[300],
                                    thickness: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, bottom: 5, top: 5),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 30.h,
                                          child: InkWell(
                                            onTap: () => cubit.dropDown10(),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Capacité d’exportation',
                                                  style: TextStyle(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                Icon(
                                                  cubit.dropDownIcon10,
                                                  size: 30,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: cubit.dropDownVisibility10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Column(
                                              children: [
                                                InkWell(
                                                  onTap: () =>
                                                      cubit.dropDown13(),
                                                  child: Container(
                                                    height: 30.h,
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Informations d\'éxportations',
                                                          style: TextStyle(
                                                            fontSize: 11.sp,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 15.w,
                                                        ),
                                                        Icon(
                                                          cubit.dropDownIcon13,
                                                          size: 30,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: cubit
                                                      .dropDownVisibility13,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0, top: 8),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Revenu annuel total :',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                '> \$100 Millions ',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Pourcentage d’exportation : ',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                '100%',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Principaux marchées :',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                'Chargeuse frontale ',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Année début d’exportation:',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                '2015',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        Text(
                                                          'Exemple de client :',
                                                          style: TextStyle(
                                                            fontSize: 11.sp,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 15),
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xfffff9cc),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                          ),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        'Nom du client :',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          color:
                                                                              Colors.grey,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          overflow:
                                                                              TextOverflow.clip,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          10.w,
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        'Condor',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          overflow:
                                                                              TextOverflow.clip,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        'Pays/ région :',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          color:
                                                                              Colors.grey,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          overflow:
                                                                              TextOverflow.clip,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          10.w,
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        'Algérie',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          overflow:
                                                                              TextOverflow.clip,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        'Produits fournies :',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          color:
                                                                              Colors.grey,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          overflow:
                                                                              TextOverflow.clip,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          10.w,
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        'Nom produit',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          overflow:
                                                                              TextOverflow.clip,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        'Chiffre d’affaire annuel :',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          color:
                                                                              Colors.grey,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          overflow:
                                                                              TextOverflow.clip,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          10.w,
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        '\$1111111111111111',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          overflow:
                                                                              TextOverflow.clip,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                Text(
                                                                  'Photos :',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        11.sp,
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                CarouselSlider(
                                                                  carouselController:
                                                                      carouselController,
                                                                  items:
                                                                      imgList8,
                                                                  options:
                                                                      CarouselOptions(
                                                                    onPageChanged:
                                                                        (index,
                                                                            reason) {
                                                                      cubit.onSlideChange(
                                                                          index);
                                                                    },
                                                                    height: 370,
                                                                    initialPage:
                                                                        cubit
                                                                            .curentIndex,
                                                                    viewportFraction:
                                                                        1,
                                                                    reverse:
                                                                        false,
                                                                    aspectRatio:
                                                                        1,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: imgList
                                                                      .asMap()
                                                                      .entries
                                                                      .map(
                                                                          (entry) {
                                                                    return Padding(
                                                                      padding: const EdgeInsets
                                                                              .symmetric(
                                                                          horizontal:
                                                                              2.0),
                                                                      child:
                                                                          InkWell(
                                                                        //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                                                        child:
                                                                            Container(
                                                                          width: cubit.curentIndex == entry.key
                                                                              ? 18
                                                                              : 12.0,
                                                                          height: cubit.curentIndex == entry.key
                                                                              ? 7
                                                                              : 4.0,
                                                                          //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                                                          decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(50),
                                                                              color: cubit.curentIndex == entry.key ? Colors.black : Colors.grey),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }).toList(),
                                                                ),
                                                              ]),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 2),
                                                Divider(
                                                  thickness: 1,
                                                ),
                                                SizedBox(height: 2),
                                                InkWell(
                                                  onTap: () =>
                                                      cubit.dropDown14(),
                                                  child: Container(
                                                    height: 30.h,
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Conditiond déxportation',
                                                          style: TextStyle(
                                                            fontSize: 11.sp,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 15.w,
                                                        ),
                                                        Icon(
                                                          cubit.dropDownIcon14,
                                                          size: 30,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: cubit
                                                      .dropDownVisibility14,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0, top: 8),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Condition de livraison acceptéesl :',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                'FOB, CFR, CIP',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Devise de paiement acceptées :',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                'USD,EUR, JPY',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Type de paiement acceptées :',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                'T/T, L/C, D/P',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                'Langue',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      11.sp,
                                                                  color: Colors
                                                                      .grey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                'Anglais, Français',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey[300],
                                    thickness: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, bottom: 5, top: 5),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () => cubit.dropDown15(),
                                          child: Container(
                                            height: 30.h,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Centre de certification',
                                                  style: TextStyle(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                Icon(
                                                  cubit.dropDownIcon15,
                                                  size: 30,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          visible: cubit.dropDownVisibility15,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0, top: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Titulaire du certificat :',
                                                        style: TextStyle(
                                                          fontSize: 11.sp,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        'Nom/Prénom  ',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Numéro du certificat :',
                                                        style: TextStyle(
                                                          fontSize: 11.sp,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '13409340394039493049394309',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Nom du certificat :',
                                                        style: TextStyle(
                                                          fontSize: 11.sp,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        'Name',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Date d’émission :',
                                                        style: TextStyle(
                                                          fontSize: 11.sp,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '2010',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 15.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Date d’éxpiration :',
                                                        style: TextStyle(
                                                          fontSize: 11.sp,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '10',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Valeur de production annuelle :',
                                                        style: TextStyle(
                                                          fontSize: 11.sp,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '1222222222',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          overflow:
                                                              TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 15.h,
                                                ),
                                                Text(
                                                  'Photos et videos du certificat :',
                                                  style: TextStyle(
                                                    fontSize: 11.sp,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                    overflow: TextOverflow.clip,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15.h,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10.0),
                                                  child: CarouselSlider(
                                                    carouselController:
                                                        carouselController,
                                                    items: imgList9,
                                                    options: CarouselOptions(
                                                      onPageChanged:
                                                          (index, reason) {
                                                        cubit.onSlideChange(
                                                            index);
                                                      },
                                                      height: 370,
                                                      initialPage:
                                                          cubit.curentIndex,
                                                      viewportFraction: 1,
                                                      reverse: false,
                                                      aspectRatio: 1,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: imgList9
                                                      .asMap()
                                                      .entries
                                                      .map((entry) {
                                                    return Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 2.0),
                                                      child: InkWell(
                                                        //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                                        child: Container(
                                                          width:
                                                              cubit.curentIndex ==
                                                                      entry.key
                                                                  ? 18
                                                                  : 12.0,
                                                          height:
                                                              cubit.curentIndex ==
                                                                      entry.key
                                                                  ? 7
                                                                  : 4.0,
                                                          //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                              color: cubit.curentIndex ==
                                                                      entry.key
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .grey),
                                                        ),
                                                      ),
                                                    );
                                                  }).toList(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        color: Colors.grey[300],
                        thickness: 6,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Visibility(
                        visible: cubit.tabBarVisibility0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Description du produit',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                height: 370,
                                child: CarouselSlider(
                                  carouselController: carouselController,
                                  items: imgList3,
                                  options: CarouselOptions(
                                    onPageChanged: (index, reason) {
                                      cubit.onSlideChange(index);
                                    },
                                    height: 370,
                                    initialPage: cubit.curentIndex,
                                    viewportFraction: 1,
                                    reverse: false,
                                    aspectRatio: 1,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: imgList.asMap().entries.map((entry) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    child: InkWell(
                                      //onTap: () => carouselController.animateToPage(cubit.curentIndex,curve: Curves.bounceInOut),
                                      child: Container(
                                        width: cubit.curentIndex == entry.key
                                            ? 18
                                            : 12.0,
                                        height: cubit.curentIndex == entry.key
                                            ? 7
                                            : 4.0,
                                        //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color:
                                                cubit.curentIndex == entry.key
                                                    ? Colors.black
                                                    : Colors.grey),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: InkWell(
                                  onTap: () => cubit.dropDown3(),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30.h,
                                        child: Row(
                                          children: [
                                            Text(
                                              'Détail produit',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15.w,
                                            ),
                                            Icon(
                                              cubit.dropDownIcon3,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 20.0),
                                child: Visibility(
                                  visible: cubit.dropDownVisibility3,
                                  child: Text(
                                    'Lorem ipsum dolor sit amet. 33 magni recusandae At molestias eius et dolorem temporibus est sunt autem qui possimus distinctio aut ipsum magnam. Et consectetur nihil est harum atque ex porro sequi sit ',
                                    style: TextStyle(
                                      overflow: TextOverflow.visible,
                                      color: Colors.grey,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Produits recommendés par le vendeur',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
//<<<<<<< ines
//                      SizedBox(
//                    height: 60.h,
//                  )
//                ],
//                ),
//>>>>>>> Aymen

//=======
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: ListView.separated(
                            scrollDirection: axisDirectionToAxis(
                                flipAxisDirection(AxisDirection.right)),
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) =>
                                buildListItem(false, media, context, index),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10),
                            itemCount: 5),
                      ),
                      SizedBox(
                        height: 50.h,
                      )
                    ]),
              ),
//>>>>>>> Aymen
              floatingActionButton: defaultButton(
                  context: context,
                  function: () {},
                  text: 'Acheter',
                  width: MediaQuery.of(context).size.width * .65,
                  radius: 5,
                  textSize: 20,
                  isUpperCase: false,
                  withIcon: true,
                  spaceBtwTextAndIcon: 35.w),
              floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
            ),
          );
        },
      ),
    );
  }
}