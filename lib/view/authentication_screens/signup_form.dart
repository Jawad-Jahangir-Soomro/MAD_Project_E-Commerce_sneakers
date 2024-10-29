import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sneakers_app/view/authentication_screens/login_screen.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// FirstName and LastName
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "FirstName",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "E-Mail",
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          /// PhoneNumber
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Phone Number",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          /// password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          /// SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                Get.to(() => const LoginScreen(), transition: Transition.leftToRightWithFade,);
              },
              child: const Text(
                "Create Account",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
