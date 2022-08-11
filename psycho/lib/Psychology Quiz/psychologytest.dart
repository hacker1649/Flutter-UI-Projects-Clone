import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

class PsychologyTest extends StatefulWidget {
  const PsychologyTest({Key? key}) : super(key: key);

  @override
  State<PsychologyTest> createState() => _PsychologyTestState();
}

class _PsychologyTestState extends State<PsychologyTest> {
  var questions= [
    {
      'question': 'Hi! Welcome to our quiz!',
      'answers': [
        { 'text': 'Hey! What\'s up', 'score': 8},
        { 'text': 'Hi…', 'score': 2},
        { 'text': 'Hello!!!!', 'score': 4},
        { 'text': 'Hello💖 💖', 'score': 6},
      ],
    },
    {
      'question': 'What do you like to do on Social Media?',
      'answers': [
        { 'text': 'Using YouTube', 'score': 8},
        { 'text': 'Using Instagram', 'score': 6},
        { 'text': 'Watch Netflix', 'score': 2},
        { 'text': 'Entertaines with funny memes', 'score': 4},
      ],
    },
    {
      'question': 'A person is following you in a dark valley. What do you do?',
      'answers': [
        { 'text': 'Walk/run in panic', 'score': 4},
        { 'text': 'Turn to him and say “What do you want”', 'score': 8},
        { 'text': 'Turn to him and pull your secret weapon', 'score': 6},
        { 'text': 'Not able to walk', 'score': 2},
      ],
    },
    {
      'question': 'A random person walks up to you and asks for marriage. What do you do?',
      'answers': [
        { 'text': 'Look nervously at him and runaway', 'score': 2},
        { 'text': 'Say yes', 'score': 8},
        { 'text': 'Kick him and walked away!', 'score': 6},
        { 'text': 'Say yes and start party each other', 'score': 4},
      ],
    },
    {
      'question':'You receive a letter from Hogwarts school and they invite you to come. What is your reaction?',
      'answers': [
        { 'text': 'Scream in delight and start packing', 'score': 4},
        { 'text': 'Firstly I take permission from my parents, then I think about it', 'score': 8},
        { 'text': 'Wonder in curiosity how this possible. It was just a movie?', 'score': 6},
        { 'text': 'Nah, I won\'t go there', 'score': 2},
      ],
    },
    {
      'question':'You\'re working in a bank when a couple robbers break in. What  do you do?',
      'answers': [
        { 'text': 'Dive out of chair and beat them up with Kung Fu moves!', 'score': 6},
        { 'text': 'Give fake money and make them fool!', 'score': 8},
        { 'text': 'Scream for help and try to run away!', 'score': 2},
        { 'text': 'Give them money and hunt them down later', 'score': 4},
      ],
    },
    {
      'question':'What is your average movie night like?',
      'answers': [
        { 'text': 'Me and some friends trying to scare ourselves senseless', 'score': 2},
        { 'text': 'Me and a close friend watching something really high-energy', 'score': 4},
        { 'text': 'Me and a close friend enjoying a good story', 'score': 6},
        { 'text': 'Me and my friends getting together so we can have a good laugh', 'score': 8},
      ],
    },
    {
      'question':'Do you like new things?',
      'answers': [
        { 'text': 'New things are the only things worth enjoying', 'score': 4},
        { 'text': 'I like only new technology', 'score': 8},
        { 'text': 'It depends on what would be most effective', 'score': 6},
        { 'text': 'None of the above', 'score': 2},
      ],
    },
    {
      'question': 'Okay! Now... Choose your weapon.',
      'answers': [
        { 'text': 'A dolly', 'score': 2},
        { 'text': 'A wand from Harry Potter', 'score': 8},
        { 'text': 'Knife', 'score': 6},
        { 'text': 'An AK47', 'score': 4},
      ],
    },
    {
      'question': 'Okay bye and follow me (your reply)?',
      'answers': [
        { 'text': 'OK!', 'score': 4},
        { 'text': 'Nope', 'score': 2},
        { 'text': 'Bye!', 'score': 6},
        { 'text': ':)', 'score': 8},
      ],
    },
  ];
  int index=0;
  int totalscore=0;
  void keyPresser(int score){
    totalscore=totalscore+score;
    setState(() {
      index=index+1;
    });
  }
  void restart(){
    setState(() {
      index=0;
      totalscore=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Psychology Demo Test',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Comfortaa',
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        shadowColor: Colors.blueGrey,
        elevation: 12.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      body: index < questions.length ?
      Quiz(questions: questions, keyPresser: keyPresser, index: index) :
      Result(resultScore: totalscore,resetHandler: restart,),
    );
  }
}


