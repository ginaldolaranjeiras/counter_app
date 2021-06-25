import 'package:counter_app/views/themes/app_colors.dart';
import 'package:counter_app/views/themes/app_images.dart';
import 'package:counter_app/views/themes/app_text-styles.dart';
import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLogin({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(
              BorderSide(color: AppColors.stroke),
            ),
          ),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(AppImages.google),
              ),
              VerticalDivider(
                color: AppColors.stroke,
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "Entrar com Google",
                  style: TextStyles.buttonGray,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
