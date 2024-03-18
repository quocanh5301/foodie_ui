// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Chúng tôi là cộng đồng chia sẻ công thức nấu ăn lớn nhất Việt Nam`
  String get intro {
    return Intl.message(
      'Chúng tôi là cộng đồng chia sẻ công thức nấu ăn lớn nhất Việt Nam',
      name: 'intro',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailHint {
    return Intl.message(
      'Email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Email không được để trống`
  String get emailEmpty {
    return Intl.message(
      'Email không được để trống',
      name: 'emailEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Email không hợp lệ`
  String get emailFormatError {
    return Intl.message(
      'Email không hợp lệ',
      name: 'emailFormatError',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordHint {
    return Intl.message(
      'Password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Password không được để trống`
  String get passwordEmpty {
    return Intl.message(
      'Password không được để trống',
      name: 'passwordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa có tài khoản? `
  String get registerText1 {
    return Intl.message(
      'Bạn chưa có tài khoản? ',
      name: 'registerText1',
      desc: '',
      args: [],
    );
  }

  /// `Tạo tài khoản`
  String get registerText2 {
    return Intl.message(
      'Tạo tài khoản',
      name: 'registerText2',
      desc: '',
      args: [],
    );
  }

  /// `Tạo tài khoản`
  String get registerTitle1 {
    return Intl.message(
      'Tạo tài khoản',
      name: 'registerTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Khám phá các món ăn mới chúng tôi ngay hôm nay`
  String get registerTitle2 {
    return Intl.message(
      'Khám phá các món ăn mới chúng tôi ngay hôm nay',
      name: 'registerTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Hãy kiểm tra email của bạn để lấy lại mật khẩu`
  String get forgotPasswordSuccess {
    return Intl.message(
      'Hãy kiểm tra email của bạn để lấy lại mật khẩu',
      name: 'forgotPasswordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký thành công, hãy kiểm tra email của bạn để xác nhận tài khoản`
  String get registerSuccess {
    return Intl.message(
      'Đăng ký thành công, hãy kiểm tra email của bạn để xác nhận tài khoản',
      name: 'registerSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã có tài khoản? `
  String get loginText1 {
    return Intl.message(
      'Bạn đã có tài khoản? ',
      name: 'loginText1',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get loginText2 {
    return Intl.message(
      'Đăng nhập',
      name: 'loginText2',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Name`
  String get nameHint {
    return Intl.message(
      'Enter your Name',
      name: 'nameHint',
      desc: '',
      args: [],
    );
  }

  /// `Please fill name`
  String get nameError {
    return Intl.message(
      'Please fill name',
      name: 'nameError',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchAll {
    return Intl.message(
      'Search',
      name: 'searchAll',
      desc: '',
      args: [],
    );
  }

  /// `What would you like to cook today?`
  String get explore {
    return Intl.message(
      'What would you like to cook today?',
      name: 'explore',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
