
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


// ignore: non_constant_identifier_names
List sample_data = [
  {
    "id": 1,
    "question": "Balong  malalim, puno ng patalim",
    "options": ['bibig', 'answer2', 'answer3', 'answer4'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Isang kulisap, Kikislap-kislap",
    "options": ['answer1', 'answert2', 'Alitaptap', 'answer4'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Matapat kong alipin, sunud-sunuran sa akin",
    "options": ['answer1', 'answer2', 'Anino', 'answer4'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Mataas kung naka-upo, mababa kung nakatayo",
    "options": ['answer1', 'answer2', 'Aso', 'answer4'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "hayan na, hayan na! hindi mo pa makita!",
    "options": ['lupa', 'hangin', 'usok', 'tubig'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Bata pa si Nene, marunong nang manahi",
    "options": ['bubuyog', 'langgam', 'tipaklong', 'gagamba'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "Dalawang bolang magaling, malayo ang nararating.",
    "options": ['mata', 'kamay', 'ilong', 'paa'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": "Hindi hari, hindi pari pero ang damit ay sari-sari.",
    "options": ['palanggana', 'sampayan', 'kabinet', 'washing machine'],
    "answer_index": 1,
  },
];

