import 'package:flutter/material.dart';

class PortfolioRichText extends StatelessWidget {
  const PortfolioRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          style: TextStyle(
            color: Color(0xFFB71C1C),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          children: [
            TextSpan(text: "Portfolio "),
            TextSpan(
                text: "Page",
                style: TextStyle(decoration: TextDecoration.underline))
          ]),
    );
  }
}
