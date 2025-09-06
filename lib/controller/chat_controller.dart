import 'package:chat_bot/resources/enum_classes.dart';
import 'package:chat_bot/resources/gemini_methods.dart';
import 'package:chat_bot/view/widgets/message_widget.dart';
import 'package:flutter/material.dart';

class ChatController extends ChangeNotifier {
  final GeminiMethods geminiMethods = GeminiMethods();

  ScreenState _state = ScreenState.empty;
  ScreenState get state => _state;

  final TextEditingController _textEditingController = TextEditingController();
  TextEditingController get textEditingController => _textEditingController;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  List<MessageWidget> _messages = [];
  List<MessageWidget> get messages => _messages;

  void sendPrompt() async {
    if (textEditingController.text.isEmpty) return;

    final MessageWidget userMessage = geminiMethods.sendUserPrompt(
      prompt: _textEditingController.text,
    );
    _messages = [..._messages, userMessage];
    updateState(ScreenState.loading);
    scroller();

    MessageWidget geminiMessage = await geminiMethods.getGeminiResponse(
      prompt: _textEditingController.text,
    );
    _messages = [..._messages, geminiMessage];
    textEditingController.clear();
    updateState(ScreenState.completed);
    scroller();
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
