import 'package:chat_bot/controller/chat_controller.dart';
import 'package:chat_bot/controller/main_controller.dart';
import 'package:chat_bot/model/chat_model.dart';
import 'package:chat_bot/resources/hive_methods.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'view/main_view.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ChatModelAdapter());
  await Hive.openBox<ChatModel>('chatDB');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainController()),
        ChangeNotifierProvider(create: (context) => ChatController()),
      ],
      child: Application(),
    ),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: context.watch<MainController>().theme,
      home: MainView(),
    );
  }
}
