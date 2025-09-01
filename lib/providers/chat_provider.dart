import 'package:chat_bot/resources/enum_classes.dart';
import 'package:chat_bot/resources/gemini_methods.dart';
import 'package:chat_bot/screens/widgets/message_widget.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  ScreenState state = ScreenState.empty;
  final GeminiMethods geminiMethods = GeminiMethods();
  final controller = TextEditingController();

  List<MessageWidget> messages = [];

  void sendPrompt() async {
    final MessageWidget userMessage = geminiMethods.sendUserPrompt(
      prompt: controller.text,
    );
    messages = [...messages, userMessage];
    state = ScreenState.loading;
    notifyListeners();

    MessageWidget geminiMessage = await geminiMethods.getGeminiResponse(
      prompt: controller.text,
    );
    messages = [...messages, geminiMessage];
    if (geminiMessage.content.isNotEmpty) {
      state == ScreenState.completed;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
