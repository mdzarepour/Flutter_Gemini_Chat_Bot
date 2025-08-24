import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  const CardWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.materialSecondBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
