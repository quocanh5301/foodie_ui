import 'package:flutter/material.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/widget/notification_dropdown.dart';
import 'package:uuid/uuid.dart';

class CoreWidgetController {
  BuildContext? get context => rootNavigatorKey.currentContext;

  OverlayEntry? _overlayEntry;
  final uuid = const Uuid();

  void removeOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  void showDropdownNotification() {
    if (context != null && _overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (BuildContext context) {
          return DropdownNotification(
            dismissibleKeyVertical: ValueKey(uuid.v4()),
            dismissibleKeyHorizontal: ValueKey(uuid.v4()),
            title: 'This is a dropdown notification',
            content: 'Dropdown notification test content',
            onTap: () {
              debugPrint('notification tapped');
            },
          );
        },
      );
      Navigator.of(context!).overlay?.insert(_overlayEntry!);
    }
  }
}
