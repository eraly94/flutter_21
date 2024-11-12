import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_app_ui/widgets/questions.dart';
import 'package:quiz_app_ui/widgets/custom_button.dart';
import 'package:quiz_app_ui/widgets/quiz_model.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: customAppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Questions(
            text: quizList[2].question,
          ),
          const Gap(130),
          const CustomButton(
            text: 'Туура эмес',
            color: Color(0xff4CB050),
          ),
          const Gap(35),
          const CustomButton(
            text: 'Туура',
            color: Color(0xffEF443A),
          ),
        ]),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text("Тапшырма 7"),
    );
  }
}
