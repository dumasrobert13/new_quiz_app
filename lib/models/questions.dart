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
    "options": ['Bibig', 'Tenga', 'Kanal', 'Ilong'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Isang kulisap, Kikislap-kislap",
    "options": ['Bumbilya', 'Bubuyog', 'Alitaptap', 'Bituin'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Matapat kong alipin, sunud-sunuran sa akin",
    "options": ['Bata', 'Aso', 'Anino', 'Pusa'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Mataas kung naka-upo, mababa kung nakatayo",
    "options": ['Baboy', 'Ibon', 'Aso', 'Palaka'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Hayan na, hayan na! hindi mo pa makita!",
    "options": ['Lupa', 'Hangin', 'Usok', 'Tubig'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Bata pa si Nene, marunong nang manahi",
    "options": ['Bubuyog', 'Langgam', 'Tipaklong', 'Gagamba'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "Dalawang bolang magaling, malayo ang nararating.",
    "options": ['Mata', 'Kamay', 'Ilong', 'Paa'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": "Hindi hari, hindi pari pero ang damit ay sari-sari.",
    "options": ['Palanggana', 'Sampayan', 'Kabinet', 'Washing Machine'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Sa malayo ay bata, sa malapit ay matanda.",
    "options": ['Pilay', 'Bulag', 'Unano', 'Bingi'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "May katawan walang mukha, walang mukha'y lumuluha.",
    "options": ['Kutsara', 'Tinidor', 'Sandok', 'Kandila'],
    "answer_index": 3,
  },
];
