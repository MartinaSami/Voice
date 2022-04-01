import 'package:flutter/material.dart';

Widget myRegistrationFormField({
  required hintLabel,
  required TextInputType textInputType,
  required void Function(String?) save,
  required String? Function(String?) validate,
  required TextEditingController controller,
  required int maxlines,
  Widget? suffixcIcon,
  required bool isSecure,
}) =>
    Material(
      elevation: 0,
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      child: TextFormField(
        maxLines: maxlines,
        cursorColor:Colors.grey,
        controller: controller,
        keyboardType: textInputType,
        obscureText: isSecure,
        decoration: InputDecoration(
            suffixIcon: suffixcIcon,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            fillColor: Colors.white,
            filled: true,
            focusColor: Colors.grey,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            hintText: hintLabel,
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            )),
        validator: validate,
        onSaved: save,
      ),
    );