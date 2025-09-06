import 'package:chat_bot/core/utils/actions/snackbar_action.dart';
import 'package:chat_bot/core/utils/constants/app_strings.dart';
import 'package:chat_bot/controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class PopupAction {
  static showContextMenu(context, details, content, id) async {
    final overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final resualt = await showMenu(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(
          details.globalPosition.dx,
          details.globalPosition.dy,
          30,
          30,
        ),
        Offset.zero & overlay.size,
      ),
      items: [
        PopupMenuItem(value: 'copy', child: Text(AppStrings.copyMessage)),
        PopupMenuItem(value: 'delete', child: Text(AppStrings.deleteMessage)),
      ],
    );
    if (resualt == 'copy') {
      Clipboard.setData(ClipboardData(text: content));
      SnackbarAction.showSnackbar(context, AppStrings.textCopiedSnack);
    }
    if (resualt == 'delete') {
      Provider.of<ChatController>(context, listen: false).deleteMessage(id);
      SnackbarAction.showSnackbar(context, AppStrings.messageDeltedSnack);
    }
  }
}
