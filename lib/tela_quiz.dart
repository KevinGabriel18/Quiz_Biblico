import 'package:flutter/material.dart';
import 'tela_destino1.dart';





class Quizpage extends StatefulWidget {
@override
_QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
int questionIndex = 0;
int score = 0;

List<Question> questions = [
Question(
    'A Bíblia quantos livros?',
    '66',
    ['66', '45', '64'],
  ),
  Question(
    'Quantos evangelhos existem no Novo Testamento?',
    '4',
    ['3', '4', '5'],
  ),
  Question(
    'Quem foi lançado na cova dos leões?',
    'Daniel',
    ['Daniel', 'Elias', 'Jonas'],
  ),
  Question(
    'Quem construiu a arca?',
    'Noé',
    ['Noé', 'Moisés', 'Abraão'],
  ),
  Question(
    'Quem foi o primeiro rei de Israel?',
    'Saul',
    ['Saul', 'Davi', 'Salomão'],
  ),
  Question(
    'Qual é o menor versículo da Bíblia?',
    'Jesus chorou.',
    ['Jesus chorou.', 'No princípio, Deus criou os céus e a terra.', 'E disse Deus: Haja luz.'],
  ),
  Question(
    'Quem foi engolido por um grande peixe?',
    'Jonas',
    ['Jonas', 'Pedro', 'Paulo'],
  ),
  Question(
    'Quem recebeu as tábuas dos Dez Mandamentos?',
    'Moisés',
    ['Moisés', 'Abraão', 'Isaac'],
  ),
  Question(
    'Qual livro da Bíblia vem depois de João?',
    'Atos',
    ['Atos', 'Romanos', 'Gálatas'],
  ),
  Question(
    'Quem foi o homem mais forte da Bíblia?',
    'Sansão',
    ['Sansão', 'Davi', 'Golias'],
  ),

];

void checkAnswer(String userAnswer) {
String correctAnswer = questions[questionIndex].answer;

setState(() {
if (userAnswer == correctAnswer) {
score++;
}
if (questionIndex < questions.length - 1) {
questionIndex++;
}else {
Navigator.push(context,
MaterialPageRoute(builder: (context) => TelaResultado(score, questions.length,)),

);
}
}
);
}

void resetquiz() {
setState(() {
questionIndex = 0;
score = 0;
});
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('Quiz',style: TextStyle(fontSize: 25.0),),
centerTitle: true,
),
body: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
Expanded(
flex: 3,
child: DecoratedBox(
  decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage(
     'assets/images/fundo.png'),
fit: BoxFit.cover,
    )
  )
),
),
Expanded(
flex: 7,
child: Center(
child: Text(
questions[questionIndex].questionText,
textAlign: TextAlign.center,
style: TextStyle(fontSize: 24.0,),
),
),
),

Wrap(
alignment: WrapAlignment.center,
spacing: 8.0,
runSpacing: 8.0,
children: questions[questionIndex].options.map((option) {
return ElevatedButton(
onPressed: () => checkAnswer(option),
child: Text(option),
);
}).toList(),
),



Container(
padding: EdgeInsets.symmetric(vertical: 16.0),
child: Text(
'Pontuação: $score / ${questions.length}',
textAlign: TextAlign.center,
style: TextStyle(fontSize: 20.0),
),
), ElevatedButton(
child: Text('resetar'),
onPressed: () =>resetquiz(),
),
],
),
);
}
}

class Question {
final String questionText;
final String answer;
final List<String> options;

Question(this.questionText, this.answer, this.options);
}
