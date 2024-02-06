import 'package:chat_bubbles/bubbles/bubble_special_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:marketplace_version_mobile/modules/details/messages_details/cubit/cubit.dart';
import 'package:marketplace_version_mobile/modules/details/messages_details/cubit/states.dart';
import 'package:marketplace_version_mobile/modules/messages/messages_screen.dart';
import 'package:marketplace_version_mobile/shared/components/components.dart';
import 'package:marketplace_version_mobile/shared/style/colors.dart';

class Message {
  final String text;
  final bool fromMe;
  final DateTime date;

  Message(this.text, this.fromMe, this.date);
}

class MessagesDetailsScreen extends StatelessWidget {
  MessageItem msgItem;
  MessagesDetailsScreen(this.msgItem);

  var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return BlocProvider(
      create: (context) => MessagesDetailsCubit(),
      child: BlocConsumer<MessagesDetailsCubit, MessagesDetailsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MessagesDetailsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              elevation: .8,
              toolbarHeight: 80,
              titleSpacing: 25,
              leadingWidth: 30,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {},
              ),
              title: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('${msgItem.image}'),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${msgItem.name}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: GroupedListView<Message, DateTime>(
                    reverse: true,
                    order: GroupedListOrder.DESC,
                    padding: EdgeInsets.all(10),
                    elements: cubit.msgList,
                    groupBy: (msg) => DateTime(
                      msg.date.year,
                      msg.date.month,
                      msg.date.day,
                    ),
                    groupHeaderBuilder: (msg) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                          child: Text(
                        DateFormat.yMMMd().format(msg.date),
                        style:
                            TextStyle(color: Colors.grey[400], fontSize: 12.sp),
                      )),
                    ),
                    itemBuilder: (context, msg) => BubbleSpecialTwo(
                      //delivered: true,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * .6),
                      text: msg.text,
                      isSender: msg.fromMe,
                      color: msg.fromMe
                          ? Color.fromARGB(255, 246, 205, 166)
                          : Color.fromARGB(255, 232, 235, 235),
                      textStyle: TextStyle(
                        fontSize: 13.sp,
                        color: msg.fromMe ? Colors.orange[900] : Colors.black,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  //height: 40,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: defaultFormField(
                            controller: messageController,
                            type: TextInputType.text,
                            validate: (p0) {},
                            radius: 30,
                            border: false,
                            hint: 'Send Message',
                            suffIcon: Icons.send,
                            suffIconColor: Colors.grey,
                            filled: true,
                            fillColor: Colors.grey[200],
                            cursorHeight: 20,
                            onSubmit: (value) {
                              cubit.addMsg(messageController.text);
                              messageController.clear();
                            },
                            suffpressd: () {
                              cubit.addMsg(messageController.text);
                              messageController.clear();
                            },
                          ),
                        ),
                      ),
                      if (!isKeyboardVisible)
                        IconButton(
                            iconSize: 45,
                            padding: EdgeInsetsGeometry.lerp(
                                EdgeInsets.zero, EdgeInsets.zero, 0),
                            onPressed: () {},
                            icon: Center(
                              child: Icon(
                                Icons.add,
                                color: defaultColor,
                              ),
                            )),
                      if (!isKeyboardVisible)
                        CircleAvatar(
                          backgroundColor: defaultColor,
                          radius: 25,
                          child: IconButton(
                              iconSize: 35,
                              padding: EdgeInsetsGeometry.lerp(
                                  EdgeInsets.zero, EdgeInsets.zero, 0),
                              onPressed: () {},
                              icon: Icon(
                                Icons.mic_none_rounded,
                                color: Colors.white,
                              )),
                        ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
