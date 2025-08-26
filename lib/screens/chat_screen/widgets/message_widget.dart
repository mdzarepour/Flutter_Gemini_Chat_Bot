import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/screens/chat_screen/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String message;
  final Role role;

  const MessageWidget({super.key, required this.message, required this.role});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scheme = Theme.of(context).colorScheme;
    final bool isUser = role == Role.user ? false : true;

    return Row(
      mainAxisAlignment: isUser
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: size.width * 0.75),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            margin: EdgeInsets.only(right: isUser ? 20 : 0, bottom: 20),
            decoration: BoxDecoration(
              color: isUser
                  ? scheme.secondaryContainer
                  : scheme.primaryContainer,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(message, softWrap: true),
          ),
        ),
      ],
    );
  }
}
