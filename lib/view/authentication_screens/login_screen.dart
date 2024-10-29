import 'package:flutter/material.dart';
import 'package:sneakers_app/view/authentication_screens/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 56,
            left: 24,
            right: 24,
            bottom: 24,
          ),
          child: Column(
            children: [
              /// logo, title and sub-title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    height: 150,
                    image: AssetImage("assets/images/shoe1.png"),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    "Welcome back,",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Discover Limitless Choices and Unmatched Convenience.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              /// Form

              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
