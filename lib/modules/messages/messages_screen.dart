import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace_version_mobile/modules/details/messages_details/messages_details_screen.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';
import 'package:marketplace_version_mobile/shared/style/colors.dart';

class MessageItem {
  bool? isConnected;
  int? messNotVue;
  String? image;
  String? date;
  String? name;
  String? msg;
  MessageItem(
    this.name,
    this.msg,
    this.isConnected,
    this.image,
    this.messNotVue,
    this.date,
  );
}

class MessagesScreen extends StatelessWidget {
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

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {},
          ),
          title: Text("Mes Messages",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 48,
                  padding: EdgeInsets.only(top: 5),
                  child: defaultFormField(
                      controller: searchController,
                      type: TextInputType.text,
                      label: 'Search here',
                      validate: (value) {},
                      radius: 25,
                      prefIcon: Icons.search,
                      prefIconColor: defaultColor),
                ),
                SizedBox(
                  height: 15.h,
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      buildChatItem(msgItemList[index], context),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 15.h,
                  ),
                  itemCount: msgItemList.length,
                ),
              ],
            ),
          ),
        ));
  }
}

Widget buildChatItem(MessageItem msgItem, context) => InkWell(
      onTap: () => navPush(context, MessagesDetailsScreen(msgItem)),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('${msgItem.image}'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(

                    // bottom: 2,

                    // end: 2,

                    ),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: (msgItem.isConnected == true)
                        ? Colors.green
                        : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${msgItem.name}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    if (msgItem.messNotVue != 0)
                      Expanded(
                        child: CircleAvatar(
                          radius: 8,
                          child: Center(
                              child: Text(
                            '${msgItem.messNotVue}',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                        ),
                      )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${msgItem.msg}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 5,
                      ),
                      child: Container(
                        width: 3.w,
                        height: 3.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      '${msgItem.date}',
                      style: TextStyle(fontSize: 13.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
