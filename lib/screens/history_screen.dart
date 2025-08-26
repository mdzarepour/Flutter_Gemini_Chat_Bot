import 'package:chat_bot/screens/widgets/history_widget.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20),
      children: [
        HistoryWidget(),
        HistoryWidget(),
        HistoryWidget(),
        HistoryWidget(),
        HistoryWidget(),
        HistoryWidget(),
        HistoryWidget(),
      ],
    );
  }
}
