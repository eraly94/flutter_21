import 'package:quiz_app_ui/quiz_page.dart';

class QuizModel {
  QuizModel({
    required this.question,
    required this.answer,
  });
  final String question;
  final bool answer;
}

QuizModel quizModel1 =
    QuizModel(question: 'Кыргызстанда 7 дубан бар', answer: true);
QuizModel quizModel2 =
    QuizModel(question: 'Кракодил бакка чыгат', answer: false);
QuizModel quizModel3 =
    QuizModel(question: 'Жеки Чан Кытайлык актер', answer: true);
QuizModel quizModel4 = QuizModel(
    question: 'Dart Apple компаниясы тарабынан иштелип чыккан', answer: false);

List<QuizModel> quizList = [quizModel1, quizModel2, quizModel3, quizModel4];
