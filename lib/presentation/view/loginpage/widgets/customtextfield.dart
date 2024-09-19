
import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/apptextstyles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.nameController,
    required this.text,
    required this.validator,
  });

  final TextEditingController nameController;
  final String text;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: nameController,
      decoration: InputDecoration(
          isDense: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.textFieldBg,
          hintText: text,
          hintStyle: AppTextStyles.textFieldHint),
    );
  }
}
