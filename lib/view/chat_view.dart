import 'package:chat_bot/core/utils/constants/app_colors.dart';
import 'package:chat_bot/controller/chat_controller.dart';
import 'package:chat_bot/core/utils/constants/app_strings.dart';
import 'package:chat_bot/resources/enum_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ChatController>();
    final size = MediaQuery.of(context).size;
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
              : ListView.builder(
                  controller: provider.scrollController,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  itemCount: provider.messages.length,
                  itemBuilder: (context, index) {
                    return provider.messages[index];
                  },
                ),
        ),
        if (provider.state == ScreenState.loading)
          SpinKitThreeBounce(color: Colors.white, size: 25),
        SizedBox(height: size.height * 0.01),
        SizedBox(
          height: size.height * 0.065,
          child: TextField(
            controller: provider.textEditingController,
            cursorColor: AppColors.materialWhite,
            style: Theme.of(context).textTheme.titleLarge,
            decoration: InputDecoration(
              suffix: IconButton(
                onPressed: () => context.read<ChatController>().sendPrompt(),
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
