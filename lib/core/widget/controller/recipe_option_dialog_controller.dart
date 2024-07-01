import 'package:flutter/material.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/feature/home/profile_tab/ui/widget/recipe_option_dialog.dart';
import 'package:uuid/uuid.dart';

class MyRecipeOptionDialogController {
  BuildContext? get context => rootNavigatorKey.currentContext;

  OverlayEntry? _overlayEntry;
  final uuid = const Uuid();

  void removeOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  void showRecipeDialog() {
    if (context != null && _overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (BuildContext context) {
          return const MyRecipeOptionDialog();
        },
      );
      Navigator.of(context!).overlay?.insert(_overlayEntry!);
    }
  }
}
