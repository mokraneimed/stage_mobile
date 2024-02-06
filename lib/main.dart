import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace_version_mobile/layout/home_layout.dart';
import 'package:marketplace_version_mobile/modules/details/messages_details/messages_details_screen.dart';
import 'package:marketplace_version_mobile/modules/details/product_details/product_details_screen.dart';
import 'package:marketplace_version_mobile/modules/messages/messages_screen.dart';
import 'package:marketplace_version_mobile/modules/welcome/welcome_screen.dart';
import 'package:marketplace_version_mobile/shared/bloc_observer.dart';
import 'package:marketplace_version_mobile/shared/network/remote/dio_helper.dart';
import 'package:marketplace_version_mobile/shared/style/themes.dart';
import 'package:marketplace_version_mobile/modules/register/register_screen.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await DioHelper.init();
  List<MessageItem> msgItemList = [
    MessageItem('Smith Mathew', 'Hi, David. Hope you’re doing Well', true,
        'assets/images/Ellipse 7.png', 3, '21 Feb'),
    MessageItem('Malik', 'Are you ready for today’s part Malika ?', false,
        'assets/images/Ellipse 13.png', 0, '02 Mars'),
    MessageItem('John Walton', 'I’am sending you a parcel rece', false,
        'assets/images/Ellipse 9.png', 0, '19 Jan'),
    MessageItem('Monica Randawa', 'Hope you’re doing well today', true,
        'assets/images/Ellipse 10.png', 1, '05 Feb'),
    MessageItem('Innoxent Jay ', 'Let’s get back to the work, You', true,
        'assets/images/Ellipse 11.png', 2, '27 May'),
    MessageItem('Harry Samit', 'Listen david, i have a problem', false,
        'assets/images/Ellipse 13.png', 0, '30 Nov'),
    MessageItem('Smith Mathew', 'Hi, David. Hope you’re doing Well', true,
        'assets/images/Ellipse 7.png', 0, '07 Mar'),
    MessageItem('Malik', 'Are you ready for today’s part Malika ?', false,
        'assets/images/Ellipse 9.png', 0, '10 Sep'),
    MessageItem('John Walton', 'I’am sending you a parcel rece', true,
        'assets/images/Ellipse 11.png', 4, '16 Mar'),
    MessageItem('Monica Randawa', 'Hope you’re doing well today..', true,
        'assets/images/Ellipse 10.png', 1, '05 Feb'),
    MessageItem('Innoxent Jay ', 'Let’s get back to the work, You..', false,
        'assets/images/Ellipse 13.png', 0, '02 Mars'),
  ];

  runApp(MyApp(msgItemList));
}

class MyApp extends StatelessWidget {
  final List<MessageItem> msgItemList;

  const MyApp(this.msgItemList, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: LightTheme,
          home: HomeLayout(),
        );
      },
    );
  }
}
