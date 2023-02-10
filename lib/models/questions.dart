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
  {
    "id": 11,
    "question": "Langit sa itaas, langit sa ibaba, tubig sa gitna",
    "options": ['Upuan', 'Niyog', 'Papaya', 'Baso'],
    "answer_index": 1,
  },
  {
    "id": 12,
    "question": "Ate mo, ate ko, ate ng lahat ng tao",
    "options": ['Atis', 'Repolyo', 'Tinola', 'Athena'],
    "answer_index": 0,
  },
  {
    "id": 13,
    "question": "Dumaan ang hari, nagkagatan ang mga pari",
    "options": ['Roller Coaster', 'Butones', 'Zipper', 'Gunting'],
    "answer_index": 2,
  },
  {
    "id": 14,
    "question": "Nagtago si Pedro, nakalabas ang ulo",
    "options": ['Ketchup', 'Daliri', 'Donut', 'Pako'],
    "answer_index": 3,
  },
  {
    "id": 15,
    "question": "Puno ko sa probinsya, puno’t dulo ay may bunga",
    "options": [
      'Puno ng Kamyas',
      'Puno ng Saging',
      'Puno ng Santol',
      'Puno ng Mangga'
    ],
    "answer_index": 0,
  },
  {
    "id": 16,
    "question": "Nang sumipot sa maliwanag kulobot na ang balat",
    "options": ['Matanda', 'Ampalaya', 'Bata', 'Kandila'],
    "answer_index": 1,
  },
  {
    "id": 17,
    "question": "Lumuluha walang mata lumalakad walang paa",
    "options": ['Papel', 'Silya', 'Ballpen', 'Yelo'],
    "answer_index": 2,
  },
  {
    "id": 18,
    "question": "Yumuko man ang reyna di malalaglag ang korona",
    "options": ['Kamyas', 'Saging', 'Santol', 'Bayabas'],
    "answer_index": 3,
  },
  {
    "id": 19,
    "question": "Bumubuka’y walang bibig, Ngumingiti ng tahimik",
    "options": ['Bulaklak', 'Bunga', 'Dahon', 'Sanga'],
    "answer_index": 0,
  },
  {
    "id": 20,
    "question": "Isang butil ng palay, sakop ang buong bahay",
    "options": ['Lamesa', 'Bumbilya', 'Upuan', 'Kama'],
    "answer_index": 1,
  },
  {
    "id": 21,
    "question": "Limang puno ng niyog, isa’y matayog",
    "options": ['Tao', 'Aso', 'Daliri', 'Paa'],
    "answer_index": 2,
  },
  {
    "id": 22,
    "question": "Isang pasukan, Tatlo ang labasan",
    "options": ['Bag', 'Kwintas', 'Relo', 'Damit'],
    "answer_index": 3,
  },
  {
    "id": 23,
    "question": "Baston ni Adan, Hindi mabilang-bilang",
    "options": ['Ulan', 'Sanga', 'Bunga', 'Puno'],
    "answer_index": 0,
  },
  {
    "id": 24,
    "question":
        "Dalawang magkaibigan, may talim ang tiyan, matagal ng nagkakagatan di pa nagkakasakitan",
    "options": ['Lagari', 'Gunting', 'Martilyo', 'Kutsilyo'],
    "answer_index": 1,
  },
  {
    "id": 25,
    "question": "Apat na magkakapatid, Sabay sabay ng sumisid",
    "options": ['Sandok', 'Kutsara', 'Tinidor', 'Baso'],
    "answer_index": 2,
  },
  {
    "id": 26,
    "question": "Sariling-sarili mo na, ginagamit pa ng iba",
    "options": ['Bag', 'Damit', 'Aso', 'Pangalan'],
    "answer_index": 3,
  },
  {
    "id": 27,
    "question": "Dugtong-dugtong, kabit-kabit, pagkabilis-bilis",
    "options": ['Tren', 'Kadena', 'Kwintas', 'Relo'],
    "answer_index": 0,
  },
  {
    "id": 28,
    "question": "Baboy ko sa pulo, ang balahibo’y pako",
    "options": ['Bayabas', 'Langka', 'Atis', 'Santol'],
    "answer_index": 1,
  },
  {
    "id": 29,
    "question": "Dalawang magkaibigan, laging nag uunahan",
    "options": ['Tenga', 'Kamay', 'Paa', 'Daliri'],
    "answer_index": 2,
  },
  {
    "id": 30,
    "question": "Hayan na si Katoto, dala-dala ang kubo",
    "options": ['Bata', 'Tao', 'Langgam', 'Pagong'],
    "answer_index": 3,
  },
];
