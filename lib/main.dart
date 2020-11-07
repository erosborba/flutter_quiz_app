import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';

import 'constanst.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int score = 0;
  final _questions = [
    {
      'questionText': 'De quem é a famosa frase “Penso, logo existo”?',
      'answers': ['Platão', 'Galileu Galilei', 'Descartes', 'Sócrates'],
      'correct': 'Descartes',
    },
    {
      'questionText': 'De onde é a invenção do chuveiro elétrico?',
      'answers': ['França', 'Inglaterra', 'Brasil', 'Austrália'],
      'correct': 'Brasil',
    },
    {
      'questionText': 'Quais o menor e o maior país do mundo?',
      'answers': [
        'Nauru e China',
        'Mônaco e Canadá',
        'Malta e EUA',
        'Vaticano e Rússia'
      ],
      'correct': 'Vaticano e Rússia'
    },
    {
      'questionText':
          'Qual o nome do presidente do Brasil que ficou conhecido como Jango?',
      'answers': [
        'Jânio Quadros',
        'João Goulart',
        'João Figueiredo',
        'Jacinto Anjos'
      ],
      'correct': 'João Goulart'
    },
    {
      'questionText': 'Quantas casas decimais tem o número pi?',
      'answers': ['Duas', 'Vinte', 'Centenas', 'Infinitas'],
      'correct': 'Infinitas'
    },
    {
      'questionText': 'Quanto tempo a luz do Sol demora para chegar à Terra?',
      'answers': ['1 dia', '8 minutos', '12 horas', '12 minutos'],
      'correct': '8 minutos'
    },
    {
      'questionText': 'Qual a nacionalidade de Che Guevara?',
      'answers': ['Peruana', 'Cubana', 'Boliviana', 'Argentina'],
      'correct': 'Argentina'
    },
    {
      'questionText':
          'Qual personagem folclórico costuma ser agradado pelos caçadores com a oferta de fumo?',
      'answers': ['Caipora', 'Boitatá', 'Saci', 'Lobisomem'],
      'correct': 'Caipora'
    },
    {
      'questionText': 'Qual a montanha mais alta do Brasil?',
      'answers': [
        'Pico da Neblina',
        'Pico da Bandeira',
        'Pico Paraná',
        'Monte Roraima'
      ],
      'correct': 'Pico da Neblina'
    },
    {
      'questionText': 'Em qual local da Ásia o português é língua oficial?',
      'answers': ['Portugal', 'Moçambique', 'Macau', 'Filipinas'],
      'correct': 'Macau'
    },
    {
      'questionText': 'Qual destes países é transcontinental?',
      'answers': ['Rússia', 'Filipinas', 'Groenlândia', 'Australia'],
      'correct': 'Rússia'
    },
    {
      'questionText': 'Qual o maior animal terrestre?',
      'answers': [
        'Baleia Azul',
        'Tubarão Branco',
        'Girafa',
        'Elefante africano'
      ],
      'correct': 'Elefante africano'
    },
  ];

  void _answerIndex(answer) {
    if (_questionIndex < _questions.length) {
      setState(
        () {
          _questionIndex += 1;
        },
      );
      print(answer);
      print(_questionIndex);
    }
    if (answer == _questions[_questionIndex - 1]['correct']) {
      score += 1;
      print('Caralho cuzão');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0Xff292929),
        appBar: AppBar(
          backgroundColor: kPrimaryColorActive,
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerIndex, _questions, _questionIndex)
            : Result(score),
      ),
    );
  }
}
