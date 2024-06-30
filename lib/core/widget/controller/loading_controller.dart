import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/widget/loading_dialog.dart';

class LoadingDialogController {
  BuildContext? get context => rootNavigatorKey.currentContext;

  OverlayEntry? _overlayEntry;

  void removeOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  void showLoadingDialog() {
    if (context != null && _overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (BuildContext context) {
          return LoadingDialog(
            asset_1: _getImage(Random().nextInt(7) + 1),
            asset_2: _getImage(Random().nextInt(7) + 1),
            backgroundIcon: AppImage.appIcon,
          );
        },
      );
      Navigator.of(context!).overlay?.insert(_overlayEntry!);
    }
  }

  String _getImage(int number) {
    switch (number) {
      case 1:
        return AppImage.icBurger;
      case 2:
        return AppImage.icCheese;
      case 3:
        return AppImage.icChicken;
      case 4:
        return AppImage.icEgg;
      case 5:
        return AppImage.icFish;
      case 6:
        return AppImage.icMeat;
      default:
        return AppImage.icWater;
    }
  }
}
