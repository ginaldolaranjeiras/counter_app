import 'package:counter_app/controllers/login_contoller.dart';
import 'package:counter_app/views/components/social_button.dart';
import 'package:counter_app/views/themes/app_colors.dart';
import 'package:counter_app/views/themes/app_images.dart';
import 'package:counter_app/views/themes/app_text-styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = LoginController();
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.4,
              color: AppColors.primary,
            ),
            Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 200,
                height: 350,
              ),
            ),
            Positioned(
              bottom: size.height * 0.03,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(AppImages.logomini),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      style: TextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SocialLogin(
                    onTap: () async {
                      controller.googleSignIn();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
