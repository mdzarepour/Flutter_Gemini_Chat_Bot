import 'package:chat_bot/view/widgets/history_widget.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

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
