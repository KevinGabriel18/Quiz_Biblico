import 'package:flutter/material.dart';
import 'package:flutter_application_1/tela_inicial.dart';

void main() {
runApp(Quizapp());
}

class Quizapp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: TelaInicial(),
debugShowCheckedModeBanner: false,
);
}
}

