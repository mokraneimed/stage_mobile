import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketplace_version_mobile/layout/cubit/cubit.dart';
import 'package:marketplace_version_mobile/layout/cubit/states.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        var cubit = HomeCubit.get(context);
        return Column(children: [
          AppBar(
            leading: IconButton(
              icon:
                  Icon(Icons.arrow_back_rounded, color: Colors.black, size: 25),
              onPressed: () {},
            ),
            title: AutoSizeText("Mes favoris",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffF6F4F4),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Visibility(
                    visible: !cubit.edit,
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        FontAwesomeIcons.arrowDown,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: cubit.edit,
                    child: IconButton(
                      onPressed: cubit.EndDelete,
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !cubit.edit,
                    child: AutoSizeText(
                      "Price: lowest to high",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Visibility(
                    visible: !cubit.edit,
                    child: IconButton(
                      onPressed: cubit.RerangeProduct,
                      icon: Icon(
                        cubit.gridIcon,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ),
                  !cubit.edit
                      ? IconButton(
                          onPressed: cubit.EditFavorisList,
                          icon: Icon(
                            Icons.edit,
                            color: Colors.black,
                            size: 18,
                          ),
                        )
                      : IconButton(
                          onPressed: () => cubit.showModal(context),
                          icon: Icon(
                            Icons.delete,
                            color: Colors.black,
                            size: 18,
                          ),
                        ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: cubit.is_grid
                      ? GridView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                MediaQuery.of(context).size.width ~/ 190,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return buildListItemFavoris(
                                cubit.Check_item,
                                false,
                                false,
                                MediaQuery.of(context),
                                context,
                                index,
                                true,
                                cubit.edit,
                                cubit.is_checked);
                          },
                          itemCount: 5,
                        )
                      : ListView.separated(
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: buildListItemFavoris(
                                  cubit.Check_item,
                                  false,
                                  false,
                                  MediaQuery.of(context),
                                  context,
                                  index,
                                  false,
                                  cubit.edit,
                                  cubit.is_checked),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 10),
                          itemCount: 5),
                ),
              ],
            ),
          )
        ]);
      },
      listener: (BuildContext context, HomeStates state) {},
    );
  }
}
