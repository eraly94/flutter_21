import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        title: const Text('Тапшырма 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 100),
            Text(
              "Flutter 21'st group",
              style: GoogleFonts.pacifico(
                  textStyle: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              )),
            ),
            const Gap(25),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            const Gap(23),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Image.asset(
                  'assets/images/phone.png',
                ),
                hintText: 'Your phone number',
              ),
            ),
            const Gap(24),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Image.asset(
                  'assets/images/mail.png',
                ),
                hintText: 'Your phone number',
              ),
            )
          ],
        ),
      ),
    );
  }
}
