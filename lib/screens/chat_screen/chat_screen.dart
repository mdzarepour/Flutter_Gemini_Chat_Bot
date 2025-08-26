import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/screens/chat_screen/widgets/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

enum Role { gemini, user }

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Column(
      spacing: 10,
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20),
            children: [
              MessageWidget(message: 'hi how are you ?', role: Role.user),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.user,
              ),
              MessageWidget(
                message: 'thanks , how can i assist you ?',
                role: Role.gemini,
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.065,
          child: TextField(
            cursorColor: AppColors.materialWhite,
            style: textTheme.titleLarge,
            decoration: InputDecoration(
              suffix: IconButton(onPressed: () {}, icon: Icon(Iconsax.send_1)),
              label: Text('message'),
            ),
          ),
        ),
      ],
    );
  }
}
