import 'package:chat_bot/model/chat_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveMethods {
  final _hive = Hive;

  final _chatDB = Hive.box<ChatModel>('chatDB');
  Box<ChatModel> get chatDB => _chatDB;

  void initHive() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _hive.initFlutter();
    _hive.registerAdapter(ChatModelAdapter());
    await _hive.openBox<ChatModel>('chatDB');
  }

  ValueListenable<Box<ChatModel>> get chatDBListener {
    return _chatDB.listenable();
  }
}
