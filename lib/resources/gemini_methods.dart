// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:chat_bot/model/message_model.dart';
import 'package:chat_bot/core/utils/constants/app_strings.dart';
import 'package:chat_bot/resources/enum_classes.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class GeminiMethods {
  final Gemini _gemini = Gemini.init(apiKey: GeminiStrings.apiKey);

  MessageModel sendUserPrompt({required String prompt}) {
    return MessageModel.createMessage(role: Role.user, content: prompt);
  }

  Future<MessageModel> getGeminiResponse({required String prompt}) async {
    final completer = Completer<MessageModel>();
    String geminiResponse = '';
    try {
      _gemini
          .streamGenerateContent(prompt)
          .listen((event) {
            final Part? part = event.content?.parts?[0];
            if (part is TextPart) {
              geminiResponse = '$geminiResponse ${part.text}';
            }
          })
          .onDone(() {
            final MessageModel geminiMessage = MessageModel.createMessage(
              role: Role.gemini,
              content: geminiResponse,
            );
            completer.complete(geminiMessage);
          });
      return completer.future;
    } catch (e) {
      final MessageModel geminiMessage = MessageModel.createMessage(
        role: Role.gemini,
        content: AppStrings.defualtGeminiMessage,
      );
      completer.complete(geminiMessage);
      return completer.future;
    }
  }
}
