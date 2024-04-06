import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:foodie/core/resource/styles.dart';

class BasicInputField extends StatelessWidget {
  const BasicInputField({
    super.key,
    required this.name,
    this.initialValue,
    this.hintText,
    this.onChanged,
    this.validator,
    this.labelText,
  });

  final String name;
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final Function(String?)? onChanged;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      initialValue: initialValue,
      style: AppStyles.f15m().copyWith(color: Colors.white),
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.5),
        hintText: hintText,
        labelText: labelText,
        labelStyle: AppStyles.f15m().copyWith(color: Colors.white),
        hintStyle: AppStyles.f15m().copyWith(color: Colors.white),
        contentPadding: EdgeInsets.all(AppStyles.width(15)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      textAlign: TextAlign.start,
      maxLines: 1,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      onChanged: onChanged,
    );
  }
}
