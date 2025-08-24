import 'package:chat_bot/screens/history_screen/history_screen.dart';
import 'package:chat_bot/screens/profile_screen/profile_screen.dart';
import 'package:chat_bot/providers/main_provider.dart';
import 'package:chat_bot/screens/chat_screen/chat_screen.dart';
import 'package:chat_bot/screens/widgets/card_widget.dart';
import 'package:chat_bot/core/utils/app_strings.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'widgets/bottom_nav_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const screens = [HistoryScreen(), ChatScreen(), ProfileScreen()];

    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.appBarTitle)),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: CardWidget(
                child: Row(
                  children: [
                    BottomNavItem(
                      icon: Iconsax.clock,
                      title: AppStrings.navLableH,
                      index: 0,
                    ),
                    BottomNavItem(
                      icon: Iconsax.message,
                      title: AppStrings.navLableC,
                      index: 1,
                    ),
                    BottomNavItem(
                      icon: Iconsax.user,
                      title: AppStrings.navLableP,
                      index: 2,
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: IndexedStack(
                index: context.watch<MainProvider>().selectedScreenIndex,
                children: screens,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
