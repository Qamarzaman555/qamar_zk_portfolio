import 'package:flutter/material.dart';

class UKTextField extends StatelessWidget {
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? initialValue;
  final Color? fillColor;
  final bool? filled;

  const UKTextField(
      {super.key,
      this.fillColor,
      this.filled,
      this.hintText,
      this.initialValue,
      this.keyboardType,
      this.onSaved,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      keyboardType: keyboardType,
      style: Theme.of(context).primaryTextTheme.titleSmall,
      initialValue: initialValue,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: fillColor,
        filled: filled,
        contentPadding: const EdgeInsets.all(12),
        hintStyle: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Colors.black.withOpacity(0.8)),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.red),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
