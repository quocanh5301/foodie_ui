import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static double width(double w) => w.w;

  static double height(double h) => h.h;

  static double fontSize(double f) => f.sp;
  static double screenW = 1.sw;
  static double screenH = 1.sh;

  static TextStyle f10r() => GoogleFonts.montserrat(
      fontSize: fontSize(10), fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle f11r() => GoogleFonts.montserrat(
      fontSize: fontSize(11), fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle f12r() => GoogleFonts.montserrat(
      fontSize: fontSize(12), fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle f13r() => GoogleFonts.montserrat(
      fontSize: fontSize(13), fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle f14r() => GoogleFonts.montserrat(
      fontSize: fontSize(14), fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle f15r() => GoogleFonts.montserrat(
      fontSize: fontSize(15), fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle f16r() => GoogleFonts.montserrat(
      fontSize: fontSize(16), fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle f10m() => GoogleFonts.montserrat(
      fontSize: fontSize(10), fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle f11m() => GoogleFonts.montserrat(
      fontSize: fontSize(11), fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle f12m() => GoogleFonts.montserrat(
      fontSize: fontSize(12), fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle f13m() => GoogleFonts.montserrat(
      fontSize: fontSize(13), fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle f14m() => GoogleFonts.montserrat(
      fontSize: fontSize(14), fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle f15m() => GoogleFonts.montserrat(
      fontSize: fontSize(15), fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle f16m() => GoogleFonts.montserrat(
      fontSize: fontSize(16), fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle f10sb() => GoogleFonts.montserrat(
      fontSize: fontSize(10), fontWeight: FontWeight.w600, color: Colors.black);

  static TextStyle f11sb() => GoogleFonts.montserrat(
      fontSize: fontSize(11), fontWeight: FontWeight.w600, color: Colors.black);

  static TextStyle f12sb() => GoogleFonts.montserrat(
      fontSize: fontSize(12), fontWeight: FontWeight.w600, color: Colors.black);

  static TextStyle f13sb() => GoogleFonts.montserrat(
      fontSize: fontSize(13), fontWeight: FontWeight.w600, color: Colors.black);

  static TextStyle f14sb() => GoogleFonts.montserrat(
      fontSize: fontSize(14), fontWeight: FontWeight.w600, color: Colors.black);

  static TextStyle f15sb() => GoogleFonts.montserrat(
      fontSize: fontSize(15), fontWeight: FontWeight.w600, color: Colors.black);

  static TextStyle f16sb() => GoogleFonts.montserrat(
      fontSize: fontSize(16), fontWeight: FontWeight.w600, color: Colors.black);
      
  static TextStyle f18sb() => GoogleFonts.montserrat(
      fontSize: fontSize(18), fontWeight: FontWeight.w600, color: Colors.black);
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.height, {super.key});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: AppStyles.height(height));
  }
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(this.width, {super.key});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: AppStyles.width(width));
  }
}

class CustomPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 10, 0);
    path.lineTo(size.width / 5, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

//E23E3E, FF6B00
extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

// class PhoneMaskController extends MaskedTextController {
//   PhoneMaskController() : super(
//     mask: "S## ### ####",
//     translator: {"#": RegExp(r'[0-9]'), "S" : RegExp(r'[0]')},
//     text: SharedPref.getUserInfo().phone,
//   );
// }