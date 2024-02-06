import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace_version_mobile/modules/details/product_details/product_details_screen.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';
import 'package:marketplace_version_mobile/shared/style/colors.dart';

class HomeScreen extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: defaultFormField(
                controller: searchController,
                type: TextInputType.text,
                label: 'Macbook Pro M2',
                //prefIcon: prefIcon,
                suffIcon: Icons.search_outlined,
                radius: 20,
                validate: (value) {},
                is_search: true,
              ),
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                defaultButton(
                  context: context,
                  function: () {},
                  text: 'Industrie',
                  textColor: Colors.black,
                  buttonColor: Colors.grey,
                  height: 25.h,
                  width: 80.w,
                  isUpperCase: false,
                  radius: 5,
                  textSize: 14.spMin,
                ),
                SizedBox(
                  width: 6.w,
                ),
                defaultButton(
                  context: context,
                  function: () {},
                  text: 'Agriculture',
                  textColor: Colors.black,
                  buttonColor: Colors.greenAccent,
                  height: 25.h,
                  width: 80.w,
                  isUpperCase: false,
                  radius: 5,
                  textSize: 14.spMin,
                ),
                SizedBox(
                  width: 6.w,
                ),
                defaultButton(
                  context: context,
                  function: () {},
                  text: 'Construction',
                  textColor: Colors.black,
                  buttonColor: Colors.orangeAccent,
                  height: 25.h,
                  width: 80.w,
                  isUpperCase: false,
                  radius: 5,
                  textSize: 14.spMin,
                ),
                SizedBox(
                  width: 6.w,
                ),
                defaultButton(
                  context: context,
                  function: () {},
                  text: 'IT Solution',
                  textColor: Colors.black,
                  buttonColor: Colors.lightBlueAccent,
                  height: 25.h,
                  width: 80.w,
                  isUpperCase: false,
                  radius: 5,
                  textSize: 14.spMin,
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Text('Nouveau arrivage',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                defaultButton(
                  context: context,
                  function: () {},
                  text: 'plus',
                  radius: 12,
                  height: 23.h,
                  width: 50.w,
                  textSize: 13.spMin,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: axisDirectionToAxis(
                      flipAxisDirection(AxisDirection.right)),
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildListItem(false, media, context, index),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 5),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text('Meilleurs Produits',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                defaultButton(
                  context: context,
                  function: () {},
                  text: 'plus',
                  radius: 12,
                  height: 23.h,
                  width: 50.w,
                  textSize: 13.spMin,
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: axisDirectionToAxis(
                      flipAxisDirection(AxisDirection.right)),
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildListItem(false, media, context, index),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 5),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('Solde', style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                defaultButton(
                  context: context,
                  function: () {},
                  text: 'plus',
                  radius: 12,
                  height: 23.h,
                  width: 50.w,
                  textSize: 13.spMin,
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: axisDirectionToAxis(
                      flipAxisDirection(AxisDirection.right)),
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildListItem(true, media, context, index),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 5),
            ),
            SizedBox(height: 10),
            Text('Marché internationale',
                style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: axisDirectionToAxis(
                      flipAxisDirection(AxisDirection.right)),
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildListItem(true, media, context, index),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 5),
            ),
            SizedBox(height: 10),
            Text('Marché national', style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: axisDirectionToAxis(
                      flipAxisDirection(AxisDirection.right)),
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      buildListItem(true, media, context, index),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}
