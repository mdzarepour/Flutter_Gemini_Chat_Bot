import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/providers/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final int index;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.title,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MainProvider>(context, listen: false);

    final textStyle = Theme.of(context).textTheme.titleLarge;
    final scheme = Theme.of(context).colorScheme;

    var color = index == provider.selectedScreenIndex
        ? scheme.onSurface
        : scheme.primaryContainer;

    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => provider.changeSelectedScreen(index),
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Text(title, style: textStyle!.copyWith(color: color)),
          ],
        ),
      ),
    );
  }
}
