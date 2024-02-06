import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/layout/cubit/cubit.dart';
import 'package:marketplace_version_mobile/layout/cubit/states.dart';
import 'package:marketplace_version_mobile/modules/account/cubit/cubit.dart';
import 'package:marketplace_version_mobile/modules/account/cubit/states.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: AutoSizeText("Adresses de livraison",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  )),
            ),
            body: Padding(
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            buildAddItem('${cubit.adrList[index]} $index'),
                          ],
                        );
                      },
                      itemCount: cubit.adrList.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(height: 10),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        String value = 'Address';
                        cubit.addAddress(value);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        child: Card(
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      String value = 'Address';
                                      cubit.addAddress(value);
                                    },
                                    icon: Icon(Icons.add_circle_rounded)),
                                AutoSizeText(
                                  "Ajouter une adresse",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget buildAddItem(address) => Container(
      width: double.infinity,
      height: 56,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AutoSizeText(
            "$address",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
