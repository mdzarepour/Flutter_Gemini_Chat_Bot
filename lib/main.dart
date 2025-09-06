import 'package:chat_bot/controller/chat_controller.dart';
import 'package:chat_bot/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/main_view.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider()),
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
      theme: context.watch<MainProvider>().theme,
      home: MainView(),
    );
  }
}
