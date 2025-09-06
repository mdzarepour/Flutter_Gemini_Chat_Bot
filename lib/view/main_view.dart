import 'package:chat_bot/view/history_view.dart';
import 'package:chat_bot/view/profile_view.dart';
import 'package:chat_bot/controller/main_controller.dart';
import 'package:chat_bot/view/chat_view.dart';
import 'package:chat_bot/core/utils/constants/app_strings.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [HistoryView(), ChatView(), ProfileView()];
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
