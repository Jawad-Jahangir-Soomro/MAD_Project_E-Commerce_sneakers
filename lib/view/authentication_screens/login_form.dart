import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sneakers_app/view/authentication_screens/signup_screen.dart';
import 'package:sneakers_app/view/navigator.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [

            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "E-Mail",
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            /// passwords
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: "Password",
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),

            const SizedBox(
              height: 8,
            ),

            const SizedBox(
              height: 32,
            ),

            /// SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(
                      () => MainNavigator(),
                ),
                child: const Text("Log In"),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            /// Create account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const Text("Create Account"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
