import 'package:chat_bot/core/utils/actions/snackbar_action.dart';
import 'package:chat_bot/resources/enum_classes.dart';
import 'package:chat_bot/resources/gemini_methods.dart';
import 'package:chat_bot/screens/widgets/message_widget.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final GeminiMethods geminiMethods = GeminiMethods();

  ScreenState _state = ScreenState.empty;
  ScreenState get state => _state;

  final TextEditingController _controller = TextEditingController();
  TextEditingController get controller => _controller;

  List<MessageWidget> _messages = [];
  List<MessageWidget> get messages => _messages;

  void updateState(ScreenState state) {
    _state = state;
    notifyListeners();
  }

  void sendPrompt() async {
    final MessageWidget userMessage = geminiMethods.sendUserPrompt(
      prompt: _controller.text,
    );
    _messages = [..._messages, userMessage];
    updateState(ScreenState.loading);

    MessageWidget geminiMessage = await geminiMethods.getGeminiResponse(
      prompt: _controller.text,
    );
    _messages = [..._messages, geminiMessage];
    updateState(ScreenState.completed);
  }

  void deleteMessage(String messageId) {
    messages.removeWhere((element) => element.id == messageId);
    notifyListeners();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
