class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.answer,
      required this.question,
      required this.options});
}

// ignore: constant_identifier_names
const List sample_data = [
  {
    "id": 1,
    "question": "Balong  malalim, puno ng patalim",
    "options": ['bibig', 'answer2', 'answer3', 'answer4'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Isang kulisap, Kikislap-kislap",
    "options": ['answer1', 'Alitaptap', 'answer3', 'answer4'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Matapat kong alipin, sunud-sunuran sa akin",
    "options": ['answer1', 'Anino', 'answer3', 'answer4'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Mataas kung naka-upo, mababa kung nakatayo",
    "options": ['answer1', 'Aso', 'answer3', 'answer4'],
    "answer_index": 2,
  },
];
