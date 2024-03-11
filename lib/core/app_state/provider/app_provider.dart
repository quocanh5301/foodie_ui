import 'dart:ui';

import 'package:foodie/core/date_time.dart';
import 'package:foodie/core/share_pref.dart';
import 'package:foodie/generated/l10n.dart';

class AppProvider {
  String changeLocale(String languageCode) {
    S.delegate.load(Locale(languageCode, ""));
    SharedPref.setLanguage(languageCode);
    DateTimeHelper.setMessage(languageCode);
    return languageCode;
  }

  String loadCurrentLanguage() {
    String currLanguageCode = SharedPref.getLanguage();
    S.delegate.load(Locale(currLanguageCode, ""));
    DateTimeHelper.setMessage(currLanguageCode);
    return currLanguageCode;
  }
}
