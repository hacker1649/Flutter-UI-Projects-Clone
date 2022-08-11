import 'package:flutter/material.dart';
import 'package:psycho/Psychology Quiz/psychologytest.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/t3.jpg'),width: 100,height: 100,),
              const SizedBox(height: 30.0,),
              const Text('Movie Genre Psychology Test',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.arrow_circle_right,color: Colors.white,size: 30.0,),
                  SizedBox(width: 20.0,),
                  Text('Action vs Horror',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Icon(Icons.arrow_circle_left,color: Colors.white,size: 30.0,),
                ],
              ),
              const SizedBox(height: 50.0,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PsychologyTest()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 10.0,
                  shadowColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                ),
                child: const Icon(Icons.start,size: 40.0,color: Colors.black,),
              ),
              const SizedBox(height: 50.0,),
              const Text('Click to Proceed',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



