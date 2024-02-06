import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace_version_mobile/modules/details/messages_details/cubit/states.dart';

import '../messages_details_screen.dart';

class MessagesDetailsCubit extends Cubit<MessagesDetailsStates> {
  MessagesDetailsCubit() : super(MessagesDetailsInitialState());

  static MessagesDetailsCubit get(context) => BlocProvider.of(context);

  List<Message> msgList = [
    Message('Hello', false, DateTime.utc(2023, 08, 25)),
    Message('Hi', true, DateTime.utc(2023, 08, 26)),
    Message('How Are you ?', false, DateTime.utc(2023, 08, 26)),
    Message('Fine', true, DateTime.utc(2023, 08, 26)),
    Message('And you ?', true, DateTime.utc(2023, 08, 26)),
    Message('Good', false, DateTime.utc(2023, 08, 26)),
    Message(
        'Can I call you ?  i need somethingggggggggggggggggggggggggggggggggggg',
        false,
        DateTime.utc(2023, 08, 27)),
    Message('No, Im very busy now, call me later', true,
        DateTime.utc(2023, 08, 27)),
    Message('Btw what do u need ?', true, DateTime.utc(2023, 08, 27)),
    Message('Never mind', false, DateTime.utc(2023, 08, 27)),
    Message('I\'ll call you later', false, DateTime.utc(2023, 08, 27)),
    Message('Okey, as u like', true, DateTime.utc(2023, 08, 27)),
    Message('have a good day', false, DateTime.utc(2023, 08, 27)),
    Message('Thnks', true, DateTime.utc(2023, 08, 27)),
  ];

  void addMsg(msg) {
    Message message = Message(
      msg,
      true,
      DateTime.now(),
    );
    msgList.add(message);
    emit(MessagesDetailsAddMsgState());
  }
}
