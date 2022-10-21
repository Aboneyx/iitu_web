import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iitu_web/core/resources/constants.dart';

class CustomTextField extends StatelessWidget {
  final bool? isVisible;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String hintText;
  final double? height;
  final int maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextEditingController? repeatController;
  final void Function(String)? onFieldSubmitted;
  final int? maxLength;
  final bool autofocus;

  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    required this.hintText,
    this.height,
    this.keyboardType,
    this.maxLines = 1,
    this.inputFormatters,
    required this.validator,
    this.repeatController,
    this.isVisible,
    this.suffixIcon,
    this.prefixIcon,
    this.onFieldSubmitted,
    this.maxLength,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        autofocus: autofocus,
        autocorrect: false,
        obscureText: isVisible ?? false,
        style: const TextStyle(
          fontSize: 15,
          color: AppColors.kGray1000,
        ),
        inputFormatters: inputFormatters,
        textAlignVertical: TextAlignVertical.center,
        maxLines: maxLines,
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        cursorColor: AppColors.kAzure,
        validator: validator,
        maxLength: maxLength,
        // validator: (value){
        //   return value!=null&&value.isEmpty?"Заполните форму!":null;
        // },
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: AppColors.kGray500,
          ),
          filled: true,
          fillColor: AppColors.kWhite,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          hintText: hintText,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffBCBEC0)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kPrimaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffBCBEC0)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
