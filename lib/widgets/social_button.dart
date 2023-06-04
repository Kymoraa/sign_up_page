import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_page/utils/colors.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String buttonLabel;
  final double horizontalPadding;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.buttonLabel,
    this.horizontalPadding = 80,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: AppColors.white,
      ),
      label: Text(
        buttonLabel,
        style: GoogleFonts.raleway(
          textStyle: Theme.of(context).textTheme.headlineSmall,
          fontSize: 14,
          color: AppColors.inputFields,
        ),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColors.inputFields,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
