// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailEmpty":
            MessageLookupByLibrary.simpleMessage("Email không được để trống"),
        "emailFormatError":
            MessageLookupByLibrary.simpleMessage("Email không hợp lệ"),
        "emailHint": MessageLookupByLibrary.simpleMessage("Email"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "forgotPasswordSuccess": MessageLookupByLibrary.simpleMessage(
            "Hãy kiểm tra email của bạn để lấy lại mật khẩu"),
        "intro": MessageLookupByLibrary.simpleMessage(
            "Chúng tôi là cộng đồng chia sẻ công thức nấu ăn lớn nhất Việt Nam"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginText1":
            MessageLookupByLibrary.simpleMessage("Bạn đã có tài khoản? "),
        "loginText2": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "nameError": MessageLookupByLibrary.simpleMessage("Please fill name"),
        "nameHint": MessageLookupByLibrary.simpleMessage("Enter your Name"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordEmpty": MessageLookupByLibrary.simpleMessage(
            "Password không được để trống"),
        "passwordHint": MessageLookupByLibrary.simpleMessage("Password"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "registerSuccess": MessageLookupByLibrary.simpleMessage(
            "Đăng ký thành công, hãy kiểm tra email của bạn để xác nhận tài khoản"),
        "registerText1":
            MessageLookupByLibrary.simpleMessage("Bạn chưa có tài khoản? "),
        "registerText2": MessageLookupByLibrary.simpleMessage("Tạo tài khoản"),
        "registerTitle1": MessageLookupByLibrary.simpleMessage("Tạo tài khoản"),
        "registerTitle2": MessageLookupByLibrary.simpleMessage(
            "Khám phá các món ăn mới chúng tôi ngay hôm nay")
      };
}
