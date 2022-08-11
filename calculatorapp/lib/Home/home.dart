import 'package:flutter/material.dart';
import 'package:calculatorapp/Calculator Buttons/buttons.dart';

void main(){
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double num1=0.0;
  double num2=0.0;
  String texttoDisplay='0';
  String result='0';
  String operation='';
void ButtonIsPressed(String text){
  debugPrint(text);
  if(text=='AC'){
    num1=0;
    num2=0;
    result='0';
    operation='';
  }
  else if(text=='C'){
    num1=0;
    num2=0;
    result='0';
    operation='';
  }
  else if(text=='⌫'){
    result=result.substring(0,result.length-1);
    if(result==''){
      result='0';
    }
  }
  else if(text=='+'||text=='-'||text=='x'||text=='/'){
    num1=double.parse(texttoDisplay);
    operation=text;
    result='0';
    texttoDisplay=texttoDisplay+text;
  }
  else if(text=='.'){
    if(result.contains('.')){
      debugPrint('Already contains a decimal');
      return;
    }
    else{
      result=result+text;
    }
  }
  else if(text=='='){
    num2=double.parse(texttoDisplay);
    if(operation=='+'){
      result=(num1+num2).toString();
    }
    if(operation=='-'){
      result=(num1-num2).toString();
    }
    if(operation=='x'){
      result=(num1*num2).toString();
    }
    if(operation=='/'){
      result=(num1/num2).toString();
    }
    num1=0.0;
    num2=0.0;
  }
  else{
    result=result+text;
  }
  debugPrint(result);
  setState(() {
    texttoDisplay=double.parse(result).toStringAsFixed(2);
  });
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Calculator',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w900,
              fontSize: 25.0,
            ),
          ),
          centerTitle: false,
          backgroundColor:Colors.cyanAccent,
        ),
        body: Container(
          child: Column(
            children: [
              const SizedBox(height: 100.0,),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Text(texttoDisplay,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
              const Expanded(
                child: Divider(),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Buttons(text:'AC',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'C',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'⌫',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'/',buttoncolor:Colors.black,textcolor:Colors.cyanAccent,callback:ButtonIsPressed,),
                    ],
                  ),
                  Row(
                    children: [
                      Buttons(text:'7',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'8',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'9',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'x',buttoncolor:Colors.black,textcolor:Colors.cyanAccent,callback:ButtonIsPressed,),
                    ],
                  ),
                  Row(
                    children: [
                      Buttons(text:'4',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'5',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'6',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'-',buttoncolor:Colors.black,textcolor:Colors.cyanAccent,callback:ButtonIsPressed,),
                    ],
                  ),
                  Row(
                    children: [
                      Buttons(text:'1',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'2',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'3',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'+',buttoncolor:Colors.black,textcolor:Colors.cyanAccent,callback:ButtonIsPressed,),
                    ],
                  ),
                  Row(
                    children: [
                      Buttons(text:'00',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'0',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'.',buttoncolor:Colors.black,textcolor:Colors.white,callback:ButtonIsPressed,),
                      Buttons(text:'=',buttoncolor:Colors.black,textcolor:Colors.cyanAccent,callback:ButtonIsPressed,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


