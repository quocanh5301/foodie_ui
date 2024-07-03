import 'package:flutter/material.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/widget/dialog_2_button.dart';
import 'package:uuid/uuid.dart';

class DialogWidgetController {
  BuildContext? get context => rootNavigatorKey.currentContext;

  OverlayEntry? _overlayEntry;
  final uuid = const Uuid();

  void removeOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  void showDialog({
    required String title,
    required String content,
    required void Function() onConfirm,
    required void Function() onDeny,
  }) {
    if (context != null && _overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (BuildContext context) {
          return Dialog2Button(
            title: title,
            content: content,
            onConfirm: onConfirm,
            onDeny: onDeny,
          );
        },
      );
      Navigator.of(context!).overlay?.insert(_overlayEntry!);
    }
  }
}
