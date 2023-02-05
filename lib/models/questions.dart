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
    "question":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "options": ['answer1', 'answer2', 'answer3', 'answer4'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "test question",
    "options": ['answer1', 'answer2', 'answer3', 'answer4'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "test question",
    "options": ['answer1', 'answer2', 'answer3', 'answer4'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "test question",
    "options": ['answer1', 'answer2', 'answer3', 'answer4'],
    "answer_index": 2,
  },
];
