import 'package:chat_bot/model/message_model.dart';
import 'package:chat_bot/resources/enum_classes.dart';
import 'package:chat_bot/resources/gemini_methods.dart';
import 'package:chat_bot/resources/hive_methods.dart';
import 'package:flutter/material.dart';

class ChatController extends ChangeNotifier {
  final GeminiMethods _geminiMethods = GeminiMethods();
  final HiveMethods _hiveMethods = HiveMethods();

  ScreenState _state = ScreenState.empty;
  ScreenState get state => _state;

  final TextEditingController _textEditingController = TextEditingController();
  TextEditingController get textEditingController => _textEditingController;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  List<MessageModel> _messages = [];
  List<MessageModel> get messages => _messages;

  void sendPrompt() async {
    if (textEditingController.text.isEmpty) return;

    final MessageModel userMessage = _geminiMethods.sendUserPrompt(
      prompt: _textEditingController.text,
    );
    _messages = [..._messages, userMessage];
    scroller();
    updateState(ScreenState.loading);

    MessageModel geminiMessage = await _geminiMethods.getGeminiResponse(
      prompt: _textEditingController.text,
    );
    textEditingController.clear();
    _messages = [..._messages, geminiMessage];
    scroller();
    updateState(ScreenState.completed);
  }

  void deleteMessage(String messageId) {
    messages.removeWhere((element) => element.id == messageId);
    notifyListeners();
  }

  void updateState(ScreenState state) {
    _state = state;
    notifyListeners();
  }

  void scroller() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent +
          scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 450),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
