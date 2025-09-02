import 'package:chat_bot/providers/main_provider.dart';
import 'package:chat_bot/screens/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          CircleAvatar(radius: 70),
          SizedBox(height: 20),
          Text('mdZarepour@gmail.com'),
          SizedBox(height: 20),
          CardWidget(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Theme :'),
                Switch(
                  value: context.watch<MainProvider>().isDarkThem,
                  onChanged: (_) {
                    context.read<MainProvider>().changeTheme();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
