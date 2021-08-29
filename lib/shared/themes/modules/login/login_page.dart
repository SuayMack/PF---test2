import 'package:flutter/material.dart';
import 'package:billsflow/shared/themes/app_colors.dart';
import 'package:billsflow/shared/themes/app_images.dart';
import 'package:billsflow/shared/themes/app_text_styles.dart';
import 'package:billsflow/shared/widgets/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.36,
                  color: AppColors.primary,
                ),
                Positioned(
                  top: 90,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.person,
                    width: 208,
                    height: 300,
                  ),
                ),
                Positioned(
                    bottom: size.height * 0.1,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.logomini),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 30),
                          child: Text(
                            "Organize seus boletos em um só lugar",
                            textAlign: TextAlign.center,
                            style: TextStyles.titleHome,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 70),
                          child: SocialLoginButton(onTap: () {
                            print("clicou");
                          }),
                        )
                      ],
                    ))
              ],
            )));
  }
}
