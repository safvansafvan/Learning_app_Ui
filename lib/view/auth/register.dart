import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginhomemt/view/auth/login.dart';
import 'package:loginhomemt/view/widget/app_button.dart';
import 'package:loginhomemt/view/widget/auth_header_bg.dart';
import 'package:loginhomemt/view/widget/text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                        'SignUp',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'SignUp Your Account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
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
                                  ? Colors.white
                                  : Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Form(
                              child: Column(
                                children: [
                                  const TextFormFieldWidget(
                                    labelText: 'Name',
                                    prefixIcn: Icons.person,
                                  ),
                                  const TextFormFieldWidget(
                                    labelText: 'Email',
                                    prefixIcn: Icons.email,
                                  ),
                                  const TextFormFieldWidget(
                                    labelText: 'Password',
                                    prefixIcn: Icons.password,
                                    suffixIcn: Icons.remove_red_eye_rounded,
                                    isPass: true,
                                  ),
                                  const TextFormFieldWidget(
                                    labelText: 'Confrom Password',
                                    prefixIcn: Icons.password,
                                    suffixIcn: Icons.remove_red_eye_rounded,
                                    isPass: true,
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(() => const LoginView(),
                              curve: Curves.easeInOut,
                              duration: const Duration(milliseconds: 300),
                              transition: Transition.zoom);
                        },
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "Already have an account ? ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black)),
                              TextSpan(
                                  text: "SignIn",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                        ),
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
