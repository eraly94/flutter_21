class Quize {
  Quize({required this.question, required this.answer});
  final String question;
  final bool answer;
}

Quize quize1 = Quize(question: "Кыргызстанда 7 дубан бар", answer: true);
Quize quize2 = Quize(question: "Кракодил бакка чыгат", answer: false);
Quize quize3 = Quize(question: "Джеки Чан Ганг-Конгтун тургуну", answer: true);
Quize quize4 = Quize(
    question: "Dart Майкрасофт тарабынан иштелип чыкканбы", answer: false);
Quize quize5 = Quize(question: "Кумшекер таттуу", answer: true);
Quize quize6 = Quize(question: "Кумшекер таттуу эмес", answer: false);
Quize quize7 = Quize(question: "Туз таттуу", answer: true);

List<Quize> quizeList = [
  quize1,
  quize2,
  quize3,
  quize4,
  quize5,
  quize6,
  quize7,
];
