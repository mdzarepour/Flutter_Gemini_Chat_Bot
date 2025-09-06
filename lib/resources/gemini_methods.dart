// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:uuid/uuid.dart';
import 'package:chat_bot/core/utils/constants/app_strings.dart';
import 'package:chat_bot/resources/enum_classes.dart';
import 'package:chat_bot/screens/widgets/message_widget.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class GeminiMethods {
  final Gemini _gemini = Gemini.init(apiKey: GeminiStrings.apiKey);
  final Uuid _uuid = Uuid();
  MessageWidget sendUserPrompt({required String prompt}) {
    return MessageWidget(
      role: Role.user,
      content: prompt,
      time: DateTime.now(),
      id: _uuid.v4(),
    );
  }

  Future<MessageWidget> getGeminiResponse({required String prompt}) async {
    final completer = Completer<MessageWidget>();
    String geminiResponse = '';
    _gemini
        .streamGenerateContent(prompt)
        .listen((event) {
          final Part? part = event.content?.parts?[0];
          if (part is TextPart) {
            geminiResponse = '$geminiResponse ${part.text}';
          }
        })
        .onDone(() {
          final MessageWidget geminiMessage = MessageWidget(
            role: Role.gemini,
            content: geminiResponse,
            time: DateTime.now(),
            id: _uuid.v4(),
          );
          completer.complete(geminiMessage);
        });
    return completer.future;
  }
}
