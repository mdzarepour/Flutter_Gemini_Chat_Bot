import 'package:chat_bot/providers/chat_provider.dart';
import 'package:chat_bot/resources/enum_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class MessageWidget extends StatelessWidget {
  final String content;
  final DateTime time;
  final Role role;

  const MessageWidget({
    super.key,
    required this.role,
    required this.content,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scheme = Theme.of(context).colorScheme;
    final bool isUser = role == Role.user ? true : false;

    return Row(
      mainAxisAlignment: isUser
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: size.width * 0.75),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            margin: EdgeInsets.only(right: isUser ? 0 : 20, bottom: 20),
            decoration: BoxDecoration(
              color: isUser
                  ? scheme.secondaryContainer
                  : scheme.primaryContainer,
              borderRadius: BorderRadius.circular(20),
            ),
            child: isUser
                ? Text(softWrap: true, content)
                : Consumer<ChatProvider>(
                    builder: (context, provider, child) {
                      if (provider.state == ScreenState.completed) {
                        return Text(softWrap: true, content);
                      } else if (provider.state == ScreenState.loading) {
                        return SpinKitThreeBounce(
                          color: Colors.white,
                          size: 10,
                        );
                      }
                      return SizedBox.shrink();
                    },
                  ),
          ),
        ),
      ],
    );
  }
}
