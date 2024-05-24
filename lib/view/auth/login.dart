import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/view/widget/app_button.dart';
import 'package:loginhomemt/view/widget/auth_header_bg.dart';
import 'package:loginhomemt/view/widget/text_field.dart';

import 'register.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          child: Stack(
            children: [
              AuthBG(screenSize: screenSize),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.white,
                                ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Login Your Account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Material(
                          elevation: 6.0,
                          shadowColor:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.black
                                  : Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 18),
                            height: screenSize.height / 2,
                            width: screenSize.width,
                            decoration: BoxDecoration(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? AppColors.white
                                  : Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const TextFormFieldWidget(
                                  labelText: 'Email',
                                  prefixIcn: Icons.email,
                                ),
                                const TextFormFieldWidget(
                                  labelText: 'password',
                                  prefixIcn: Icons.password,
                                  suffixIcn: Icons.remove_red_eye_rounded,
                                  isPass: true,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forgot password ?',
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                AppButton(
                                  label: 'Login',
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(() => const RegisterView(),
                              curve: Curves.easeInOut,
                              duration: const Duration(milliseconds: 300),
                              transition: Transition.zoom);
                        },
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "Don't have an account ? ",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                          TextSpan(
                            text: "Register",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w700),
                          )
                        ])),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
