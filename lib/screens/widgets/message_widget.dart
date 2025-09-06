import 'package:chat_bot/core/utils/actions/popup_action.dart';
import 'package:chat_bot/resources/enum_classes.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String content;
  final DateTime time;
  final Role role;
  final String id;

  const MessageWidget({
    super.key,
    required this.role,
    required this.content,
    required this.time,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bool isUser = role == Role.user ? true : false;

    return GestureDetector(
      onLongPressStart: (details) {
        PopupAction.showContextMenu(context, details, content, id);
      },
      child: Row(
        mainAxisAlignment: isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              margin: EdgeInsets.only(right: isUser ? 0 : 20, bottom: 20),
              decoration: BoxDecoration(
                color: isUser
                    ? scheme.secondaryContainer
                    : scheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(softWrap: true, content),
            ),
          ),
        ],
      ),
    );
  }
}
