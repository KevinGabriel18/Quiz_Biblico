import 'package:flutter/material.dart';
import 'tela_quiz.dart';


class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/images/biblia.gif'), fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                ),
              ),
            SizedBox(height: 500), 
               GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Quizpage(),
                        ),
                      ),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Center(
                        child: Text(
                          'INICIAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ))),
                      SizedBox(height: 20), 
                      GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Quizpage(),
                        ),
                      ),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Center(
                        child: Text(
                          'CREDITOS',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ))),
          ],
        ),
      ),
      ),
    );
  }
}

