import 'package:chat_bot/model/message_model.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
part 'chat_model.g.dart';

@HiveType(typeId: 0)
class ChatModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final IconData icon;
  @HiveField(2)
  final DateTime createDate;
  @HiveField(3)
  final String firstMessage;
  @HiveField(4)
  List<MessageModel> chatMessages;

  ChatModel({
    required this.id,
    required this.icon,
    required this.createDate,
    required this.firstMessage,
    required this.chatMessages,
  });

  factory ChatModel.creteChat(firstMessage, icon, chatMessages) {
    final Uuid uuid = Uuid();
    final DateTime time = DateTime.now();

    return ChatModel(
      id: uuid.v4(),
      icon: icon,
      createDate: time,
      firstMessage: firstMessage,
      chatMessages: chatMessages,
    );
  }
}
