import 'package:chat_bot/screens/history_screen.dart';
import 'package:chat_bot/screens/profile_screen.dart';
import 'package:chat_bot/providers/main_provider.dart';
import 'package:chat_bot/screens/chat_screen.dart';
import 'package:chat_bot/core/utils/app_strings.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [HistoryScreen(), ChatScreen(), ProfileScreen()];
    int selectedIndex = context.watch<MainProvider>().selectedScreenIndex;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: AppBar(title: Text(AppStrings.appBarTitle)),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: IndexedStack(index: selectedIndex, children: screens),
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) =>
                    context.read<MainProvider>().changeSelectedScreen(index),
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Iconsax.clock),
                    label: '  ',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Iconsax.message),
                    label: '  ',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Iconsax.user),
                    label: '  ',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
