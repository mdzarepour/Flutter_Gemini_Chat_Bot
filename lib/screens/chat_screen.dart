import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/providers/chat_provider.dart';
import 'package:chat_bot/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ChatProvider>();

    return Column(
      children: [
        Expanded(
          child: provider.messages.isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(size: 45, Iconsax.folder_cross),
                    SizedBox(height: 20),
                    Text(AppStrings.emptyChatState),
                  ],
                )
              : ListView(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  children: provider.messages,
                ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.065,
          child: TextField(
            controller: provider.controller,
            cursorColor: AppColors.materialWhite,
            style: Theme.of(context).textTheme.titleLarge,
            decoration: InputDecoration(
              suffix: IconButton(
                onPressed: () {
                  context.read<ChatProvider>().sendPrompt();
                },
                icon: const Icon(Iconsax.send_1),
              ),
              label: const Text(AppStrings.inputLable),
            ),
          ),
        ),
      ],
    );
  }
}
