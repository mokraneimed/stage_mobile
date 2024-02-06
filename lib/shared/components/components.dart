import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../modules/details/product_details/product_details_screen.dart';
import '../style/colors.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  String? label,
  String? hint,
  double radius = 0,
  double suffContainerRadius = 15,
  IconData? prefIcon,
  IconData? suffIcon,
  bool is_search = false,
  Color suffIconColor = Colors.white,
  Color? prefIconColor,
  double suffIconSize = 25,
  double? cursorHeight,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
  Function()? onTap,
  required String? Function(String?)? validate,
  bool obscureText = false,
  Function()? suffpressd,
  //required String text,
  Color suffContainerColor = Colors.black,
  Color? labelColor,
  Color? fillColor,
  bool? filled,
  bool border = true,
}) =>
    TextFormField(
        //enableSuggestions: true,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          height: 1,
        ),
        controller: controller,
        keyboardType: type,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        validator: validate,
        obscureText: obscureText,
        onTap: onTap,
        cursorHeight: cursorHeight,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: filled,
          hintText: hint,
          labelStyle: TextStyle(
              fontSize: 13,
              color: (labelColor == null) ? Color(0xff8391A1) : labelColor),
          prefixIcon: prefIcon != null
              ? Icon(
                  prefIcon,
                  color: prefIconColor,
                )
              : null,
          suffixIcon: is_search
              ? Container(
                  //padding: EdgeInsets.symmetric(horizontal: 5),
                  width: 50.w,
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: suffContainerColor,
                    borderRadius:
                        BorderRadius.all(Radius.circular(suffContainerRadius)),
                  ),
                  child: IconButton(
                    onPressed: suffpressd,
                    icon: Icon(
                      suffIcon,
                      color: suffIconColor,
                      size: suffIconSize,
                    ),
                  ),
                )
              : IconButton(
                  onPressed: suffpressd,
                  icon: Icon(
                    suffIcon,
                    color: suffIconColor,
                    size: suffIconSize,
                  ),
                ),
          labelText: label,
          border: (border == true)
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius),
                  gapPadding: 10,
                )
              : OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(radius),
                ),
        ));

Widget defaultTexButton({
  required Function() function,
  required String text,
  double? textSize,
  Color textColor = defaultColor,
  TextDecoration? textDecoration,
  bool? toUpperCase,
  bool underline = false,
}) =>
    TextButton(
        onPressed: function,
        child: AutoSizeText(
          (toUpperCase == true) ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: textSize,
            color: textColor,
            decoration: underline ? TextDecoration.underline : null,
          ),
        ));

Widget defaultButton({
  required BuildContext context,
  double width = 200,
  double? height,
  double radius = 30,
  double textSize = 30,
  //Color background = Colors.lightBlueAccent,
  bool isUpperCase = true,
  required Function function,
  required String text,
  Color textColor = Colors.white,
  Color buttonColor = defaultColor,
  Color borderColor = Colors.transparent, // New property for border color
  Color iconColor = Colors.white,
  double borderWidth = 0.0,
  bool withIcon = false, // New property for border width
  double? spaceBtwTextAndIcon,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: borderColor, // Set the border color
          width: borderWidth,
          // Set the border width
        ),
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          function();
        },
        //(){print('${emailController.text} //// ${passwordController.text} ' );},
        child: withIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    isUpperCase ? text.toUpperCase() : text,
                    style: TextStyle(
                      fontSize: textSize,
                      color: textColor,
                    ),
                  ),
                  SizedBox(
                    width: spaceBtwTextAndIcon,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: iconColor,
                  )
                ],
              )
            : AutoSizeText(
                isUpperCase ? text.toUpperCase() : text,
                style: TextStyle(
                  fontSize: textSize,
                  color: textColor,
                ),
              ),
      ),
    );

Widget DefaultBackButton({
  required void Function()? function,
}) =>
    InkWell(
      onTap: function,
      child: Container(
        height: 35.h,
        width: 35.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Color(0xffe8ecf4))),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 15,
        ),
      ),
    );

void navPush(context, widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ));
}

void navPushAndFinish(context, widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false,
  );
}

Widget buildSeparator() {
  return Padding(
    padding: const EdgeInsetsDirectional.only(start: 20),
    child: Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey[500],
    ),
  );
}

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({
    Key? key,
    required this.imagePath,
    this.imgWidth = 200,
    this.imgheight = 200,
  }) : super(key: key);

  final String imagePath;
  final double imgWidth;
  final double imgheight;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: imgWidth,
      height: imgheight,
    );
  }
}

void CustomFlutterToast({
  required BuildContext context,
  required String text,
  required Color color,
  Color textColor = Colors.white,
  int duration = 3,
  ToastGravity gravity = ToastGravity.BOTTOM,
  required IconData icon,
  Color iconColor = Colors.white,
  double radius = 40,
}) {
  FToast fToast = FToast();
  fToast.init(context);
  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ],
    ),
  );

  fToast.showToast(
    child: toast,
    toastDuration: Duration(seconds: duration),
    gravity: gravity,
  );
}

Widget buildListItemFavoris(
    Function(bool? value) check_item,
    bool is_sold_out,
    bool sold,
    MediaQueryData media,
    BuildContext context,
    int index,
    bool is_grid,
    bool edit,
    is_checked) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 7),
    width: 165,
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(20),
    ),
    child: is_sold_out
        ? Stack(children: [
            Opacity(
              opacity: 0.4,
              child: Padding(
                padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                child: is_grid
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(imgListString[index]),
                              width: double.infinity,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //Spacer(),
                          SizedBox(
                            height: 5.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Pan',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14.spMin,
                                    fontWeight: FontWeight.w900),
                              ),
                              //Spacer(),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                '130 Pieces',
                                style: TextStyle(
                                  fontSize: 14.spMin,
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                height: 25,
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '100\$',
                                          style: TextStyle(
                                              color: defaultColor,
                                              fontSize: 14.spMin),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        if (sold)
                                          Text(
                                            '120\$',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationColor: Colors.red,
                                              decorationThickness: 1.3,
                                              fontSize: 14.spMin,
                                            ),
                                          ),
                                      ],
                                    ),
                                    Spacer(),
                                    //SizedBox(width: 7,),
                                    IconButton(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.zero,
                                      iconSize: 20.r,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border_outlined,
                                      ),
                                      //alignment: Alignment.topCenter,
                                      //visualDensity:VisualDensity.compact,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage('assets/images/pan.jpeg'),
                                  width: 153,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              //Spacer(),
                              SizedBox(
                                width: 5.h,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Pan',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 14.spMin,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    //Spacer(),
                                    SizedBox(
                                      height: 11.h,
                                    ),
                                    Text(
                                      '130 Pieces',
                                      style: TextStyle(
                                        fontSize: 14.spMin,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Container(
                                      height: 25,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '100\$',
                                                style: TextStyle(
                                                    color: defaultColor,
                                                    fontSize: 14.spMin),
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              if (sold)
                                                Text(
                                                  '120\$',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    decorationColor: Colors.red,
                                                    decorationThickness: 1.3,
                                                    fontSize: 14.spMin,
                                                  ),
                                                ),
                                            ],
                                          ),
                                          //Spacer(),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          IconButton(
                                            alignment: Alignment.centerRight,
                                            padding: EdgeInsets.zero,
                                            iconSize: 20.r,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_border_outlined,
                                            ),
                                            //alignment: Alignment.topCenter,
                                            //visualDensity:VisualDensity.compact,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          AutoSizeText(
                            "Ce produit est actuellement solde out!",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                color: Color(0xff9B9B9B),
                                fontSize: 14.spMin,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
              ),
            ),
            is_grid
                ? Center(
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                          child: AutoSizeText(
                            "Ce produit est actuellement solde out!",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.spMin,
                                fontWeight: FontWeight.w500),
                          ),
                        )),
                  )
                : Container(),
            edit
                ? Row(
                    children: [
                      Spacer(),
                      Checkbox(
                          fillColor: MaterialStateColor.resolveWith((states) =>
                              is_checked ? Colors.black : Colors.transparent),
                          activeColor: Colors.white,
                          checkColor: Colors.white,
                          value: is_checked,
                          onChanged: check_item),
                    ],
                  )
                : Container()
          ])
        : InkWell(
            onTap: () => navPush(context, ProductDetailsScreen()),
            child: Padding(
              padding: EdgeInsets.only(top: 5, left: 5, right: 5),
              child: is_grid
                  ? Stack(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage(imgListString[index]),
                              width: double.infinity,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //Spacer(),
                          SizedBox(
                            height: 5.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Pan',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14.spMin,
                                    fontWeight: FontWeight.w900),
                              ),
                              //Spacer(),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                '130 Pieces',
                                style: TextStyle(
                                  fontSize: 14.spMin,
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                height: 25,
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '100\$',
                                          style: TextStyle(
                                              color: defaultColor,
                                              fontSize: 14.spMin),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        if (sold)
                                          Text(
                                            '120\$',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationColor: Colors.red,
                                              decorationThickness: 1.3,
                                              fontSize: 14.spMin,
                                            ),
                                          ),
                                      ],
                                    ),
                                    Spacer(),
                                    //SizedBox(width: 7,),
                                    IconButton(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.zero,
                                      iconSize: 20.r,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border_outlined,
                                      ),
                                      //alignment: Alignment.topCenter,
                                      //visualDensity:VisualDensity.compact,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      edit
                          ? Row(
                              children: [
                                Spacer(),
                                Checkbox(
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => is_checked
                                            ? Colors.black
                                            : Colors.transparent),
                                    activeColor: Colors.white,
                                    checkColor: Colors.white,
                                    value: is_checked,
                                    onChanged: check_item),
                              ],
                            )
                          : Container()
                    ])
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage('assets/images/pan.jpeg'),
                            width: 153,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        //Spacer(),
                        SizedBox(
                          width: 5.h,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Pan',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14.spMin,
                                    fontWeight: FontWeight.w900),
                              ),
                              //Spacer(),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                '130 Pieces',
                                style: TextStyle(
                                  fontSize: 14.spMin,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                height: 25,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '100\$',
                                          style: TextStyle(
                                              color: defaultColor,
                                              fontSize: 14.spMin),
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        if (sold)
                                          Text(
                                            '120\$',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationColor: Colors.red,
                                              decorationThickness: 1.3,
                                              fontSize: 14.spMin,
                                            ),
                                          ),
                                      ],
                                    ),
                                    //Spacer(),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    IconButton(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.zero,
                                      iconSize: 20.r,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border_outlined,
                                      ),
                                      //alignment: Alignment.topCenter,
                                      //visualDensity:VisualDensity.compact,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        edit
                            ? Checkbox(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => is_checked
                                        ? Colors.black
                                        : Colors.transparent),
                                activeColor: Colors.white,
                                checkColor: Colors.white,
                                value: is_checked,
                                onChanged: check_item)
                            : Container()
                      ],
                    ),
            ),
          ),
  );
}

List<String> imgListString = [
  'assets/images/img_4.png',
  'assets/images/img_5.png',
  'assets/images/img_6.png',
  'assets/images/img_3.png',
  'assets/images/img_4.png',
];

Widget buildListItem(
        bool sold, MediaQueryData media, BuildContext context, int index) =>
    InkWell(
      onTap: () => navPush(context, ProductDetailsScreen()),
      child: Container(
        padding: EdgeInsetsDirectional.all(2),
        width: 165,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(imgListString[index]),
                  width: double.infinity,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              //Spacer(),
              SizedBox(
                height: 5.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Pan',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 14.spMin, fontWeight: FontWeight.w900),
                  ),
                  //Spacer(),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    '130 Pieces',
                    style: TextStyle(
                      fontSize: 14.spMin,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    height: 25,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              '100\$',
                              style: TextStyle(
                                color: defaultColor,
                                fontSize: 14.spMin,
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            if (sold)
                              Text(
                                '120\$',
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red,
                                  decorationThickness: 1.3,
                                  fontSize: 14.spMin,
                                ),
                              ),
                          ],
                        ),
                        Spacer(),
                        //SizedBox(width: 7,),
                        IconButton(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.zero,
                          iconSize: 20.r,
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_outlined,
                          ),
                          //alignment: Alignment.topCenter,
                          //visualDensity:VisualDensity.compact,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
