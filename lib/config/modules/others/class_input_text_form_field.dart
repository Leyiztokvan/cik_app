import 'package:app_vorlage_prototyp/config/modules/border_padding_margin_radius_etc_variables_module.dart';
import 'package:flutter/material.dart';

class XInputText extends StatelessWidget {
  const XInputText({
    Key? key,
    required this.onChanged,
    required this.hintText,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.textInputAction,
  }) : super(key: key);
  final Function(String?) onChanged;
  final String? Function(String?)? validator;
  final String hintText;
  final bool obscureText;
  //keyboardType used for indicating what type of keyboard we want to display. In our case, we will use a special keyboard for email that adds on the screen an @ character.
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.only(left: 16),
        hintText: hintText,
        fillColor: Theme.of(context).colorScheme.background,
        filled: true,
        //errorStyle: height, show the the erorrText, if there is no height the errorText would not be shown
        errorStyle: const TextStyle(height: 0, color: Colors.transparent),
        hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
        border: OutlineInputBorder(
          // borderRadius: BorderRadius.zero,
          borderRadius: rPrimaryRadiusAll,
          // borderSide: BorderSide(color: Color(0xFF707070), width: .5)
        ),
        enabledBorder: OutlineInputBorder(
            // borderRadius: BorderRadius.zero,
            borderRadius: rPrimaryRadiusAll,
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.surface, width: .5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: rPrimaryRadiusAll,
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.surface, width: 1.5)),
        errorBorder: OutlineInputBorder(
          borderRadius: rPrimaryRadiusAll,
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error, width: 1.5),
        ),
      ),
      style: Theme.of(context).textTheme.overline,
    );
  }
}
