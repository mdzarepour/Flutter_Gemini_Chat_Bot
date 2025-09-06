import 'package:chat_bot/controller/main_controller.dart';
import 'package:chat_bot/view/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
                  value: context.watch<MainController>().isDarkThem,
                  onChanged: (_) {
                    context.read<MainController>().changeTheme();
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
