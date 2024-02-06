import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/layout/cubit/cubit.dart';
import 'package:marketplace_version_mobile/layout/cubit/states.dart';

import '../shared/style/colors.dart';

class HomeLayout extends StatelessWidget {
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
              centerTitle: true,
              title: Image(
                image: AssetImage('assets/images/img.png'),
                height: 35,
              ),
              leading: SubmenuButton(
                menuChildren: [],
                child: Icon(
                  Icons.menu_outlined,
                  size: 32,
                ),
              ),
            ),
            body: cubit.screensList[cubit.index],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: defaultColor,
              currentIndex: cubit.index,
              onTap: (value) {
                cubit.ChangeButtomNavItem(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: 'Acceuil',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    //color: Colors.black,
                  ),
                  label: 'Souhaits',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message,
                    //color: Colors.black,
                  ),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.production_quantity_limits,
                    //color: Colors.black,
                  ),
                  label: 'Commandes',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline_outlined,
                    //color: Colors.black,
                  ),
                  label: 'Compte',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
