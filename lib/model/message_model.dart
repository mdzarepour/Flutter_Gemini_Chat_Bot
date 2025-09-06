import 'package:chat_bot/resources/enum_classes.dart';
import 'package:uuid/uuid.dart';

class MessageModel {
  final String content;
  final DateTime time;
  final Role role;
  final String id;

  const MessageModel({
    required this.role,
    required this.content,
    required this.time,
    required this.id,
  });

  factory MessageModel.createMessage({
    required Role role,
    required String content,
  }) {
    final Uuid uuid = Uuid();
    final DateTime time = DateTime.now();

    return MessageModel(
      role: role,
      content: content,
      time: time,
      id: uuid.v4(),
    );
  }
}
