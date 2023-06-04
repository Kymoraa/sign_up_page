import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 350,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20.0),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.inputFields,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.mainColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.raleway(
            textStyle: Theme.of(context).textTheme.headlineSmall,
            fontSize: 14,
            color: AppColors.inputFields,
          ),
        ),
        style: GoogleFonts.raleway(
          textStyle: Theme.of(context).textTheme.headlineSmall,
          fontSize: 14,
        ),
      ),
    );
  }
}
