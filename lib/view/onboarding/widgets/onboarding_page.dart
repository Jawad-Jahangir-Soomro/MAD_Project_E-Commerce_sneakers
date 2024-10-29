import 'package:flutter/material.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Image(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 28,
              fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}