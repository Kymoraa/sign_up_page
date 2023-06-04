import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_page/utils/colors.dart';
import 'package:sign_up_page/widgets/social_button.dart';

import '../widgets/gradient_button.dart';
import '../widgets/input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/landing_page.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.black.withOpacity(0.2),
              BlendMode.lighten,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: height * 0.15,
              bottom: height * 0.15,
              left: width * 0.3,
              right: width * 0.3,
            ),
            height: height * 0.7,
            width: width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.white.withOpacity(0.1),
              boxShadow: [
                BoxShadow(
                  color: AppColors.white.withOpacity(0.4),
                  blurRadius: 10.0,
                  offset: const Offset(0, 5), // shadow direction: bottom right
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.headlineSmall,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SocialButton(
                    iconPath: 'assets/svgs/google.svg',
                    buttonLabel: 'Continue with Google',
                  ),
                  const SizedBox(height: 20),
                  const SocialButton(
                    iconPath: 'assets/svgs/facebook.svg',
                    buttonLabel: 'Continue with Facebook',
                    horizontalPadding: 73,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'or',
                    style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.headlineSmall,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const LoginField(
                    hintText: 'user@email.com',
                  ),
                  const SizedBox(height: 15),
                  const LoginField(
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 20),
                  const GradientButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
