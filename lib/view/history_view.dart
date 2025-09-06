import 'package:chat_bot/resources/hive_methods.dart';
import 'package:chat_bot/view/widgets/history_widget.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final hive = HiveMethods();
    return hive.chatDB.values.isEmpty
        ? Center(child: Text('empty'))
        : ValueListenableBuilder(
            valueListenable: hive.chatDBListener,
            builder: (context, value, child) {
              return ListView.builder(
                itemCount: hive.chatDB.values.length,
                itemBuilder: (context, index) {
                  return HistoryWidget();
                },
              );
            },
          );
  }
}
