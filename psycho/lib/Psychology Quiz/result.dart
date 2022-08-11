import 'package:flutter/material.dart';

String genre='';
class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  final int resultScore;
  const Result({required this.resultScore,required this.resetHandler});
  String get resultPhrase{
    String resulttext='';
    if(resultScore>60){
      resulttext='You love to be frightened and are practically addicted to all-things horror.';
      genre='horror';
    }
    else{
      resulttext='You\'re quite the adrenaline junkie, are\'t you? You mostly watch action movies.';
      genre='action';
    }
    return resulttext;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: const TextStyle(
                color: Colors.cyanAccent,
                letterSpacing: 0.6,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Comfortaa',
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(60),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: genre=='horror'
                      ? Image.asset('assets/horror.jpg',)
                      : Image.asset('assets/action.jpg',)
              ),
            ),
            ElevatedButton.icon(
              onPressed: resetHandler,
              icon: const Icon(Icons.restart_alt,size: 35.0,color: Colors.white,),
              label: const Text('Restart Quiz',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[900],
                elevation: 6.0,
                shadowColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            )
          ],
        ),
    );
  }
}


