import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/images.dart';
import 'package:foodie/core/styles.dart';
import 'package:foodie/generated/l10n.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppStyles.width(16),
        vertical: AppStyles.height(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppStyles.width(20),
            vertical: AppStyles.height(12),
          ),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintText: S.of(context).searchAll,
          hintStyle: AppStyles.f12r(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(AppImage.icSearch),
          ),
        ),
        onFieldSubmitted: (value) => {},
        // SearchResultRoute(keyword: value).push(context),
      ),
    );
  }
}
