import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController nameController=TextEditingController();
  TextEditingController genderController=TextEditingController();
  TextEditingController heightControllerfeet=TextEditingController();
  TextEditingController heightControllerinches=TextEditingController();
  TextEditingController weightController=TextEditingController();
  double bmiResult=0.0;
  String textResult='';
  @override
  void initState(){
    super.initState();
    nameController.addListener(() => setState(() {}));
    genderController.addListener(() => setState(() {}));
    heightControllerfeet.addListener(() => setState(() {}));
    heightControllerinches.addListener(() => setState(() {}));
    weightController.addListener(() => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('BMI Calculator',
              style: TextStyle(
                color: Colors.cyanAccent,
                fontFamily: 'PT Sans',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    nameController.text='';
                    genderController.text='';
                    heightControllerfeet.text='';
                    heightControllerinches.text='';
                    weightController.text='';
                    bmiResult=0.0;
                    textResult='';
                  });
                },
                icon: const Icon(Icons.refresh_rounded,size: 24.0,),
              )
            ],
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0.0),
                child: Column(
                  children: [
                    textfield('Full Name', 'Enter your full name', nameController,Icons.drive_file_rename_outline_rounded,TextInputType.name),
                    const SizedBox(height: 15.0,),
                    textfield('Gender', 'Enter your gender', genderController,Icons.person_outline_rounded,TextInputType.name),
                    const SizedBox(height: 15.0,),
                    textfield('Height In Feet', 'Enter your height in feet', heightControllerfeet,Icons.height_rounded,TextInputType.number),
                    const SizedBox(height: 15.0,),
                    textfield('Height In Inches', 'Enter your height in inches', heightControllerinches,Icons.height_rounded,TextInputType.number),
                    const SizedBox(height: 15.0,),
                    textfield('Weight', 'Enter your weight in kilograms', weightController,Icons.monitor_weight_rounded,TextInputType.number),
                    const SizedBox(height: 30.0,),
                    OutlinedButton.icon(
                      onPressed: () {
                        double f=double.parse(heightControllerfeet.text);
                        double i=double.parse(heightControllerinches.text);
                        double w=double.parse(weightController.text);
                        double h;
                        setState((){
                          f=f*0.3048;
                          i=i*0.0254;
                          h=f+i;
                          bmiResult=w/(h*h);
                          if(bmiResult>40){
                            textResult='You have Obesidad Morbida';
                          }else if(bmiResult>=30 && bmiResult<=39.9){
                            textResult='You have Obesity';
                          } else if(bmiResult>=25 && bmiResult<=29.9){
                            textResult='You\'re over weight.';
                          }else if(bmiResult>=18.5 && bmiResult<=24.9){
                            textResult='You have normal weight.';
                          }else{
                            textResult='You\'re under weight.';
                          }
                        });
                      },
                      icon: const Icon(Icons.calculate,size: 23.0,),
                      label: const Text('Calculate',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'PT Sans',
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 5.0,
                        backgroundColor: Colors.cyanAccent,
                        shadowColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(40.0, 13.0, 40.0, 13.0),
                        side: const BorderSide(width: 4,color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25.0,),
                    Text(bmiResult.toStringAsFixed(2),
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'PT Sans',
                        fontSize: 30.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25.0,),
                    Text(textResult,
                      style: const TextStyle(
                        color: Colors.cyanAccent,
                        fontFamily: 'PT Sans',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50.0,),
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
  Widget textfield(String ltext,String htext,TextEditingController textController,IconData source,TextInputType resource){
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.blueGrey[900],
        contentPadding: const EdgeInsets.symmetric(vertical: 17.0),
        prefixIcon: Icon(source,size: 23.0,color: Colors.white,),
        suffixIcon: textController.text.isEmpty
            ? Container(width: 0,)
            : IconButton(
                icon: const Icon(Icons.close,color: Colors.white,),
                onPressed: () => textController.clear(),
        ),
        hintText: htext,
        hintStyle: const TextStyle(
          fontFamily: 'PT Sans',
          color: Colors.grey,
          fontSize: 14.0,
          fontWeight: FontWeight.w900,
        ),
        labelText: ltext,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'PT Sans',
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 4),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(width: 3,color: Colors.cyanAccent),
        ),
      ),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontFamily: 'PT Sans',
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.white,
      cursorHeight: 22.0,
      cursorRadius: const Radius.circular(10),
      cursorWidth: 3.0,
      keyboardAppearance: Brightness.dark,
      keyboardType: resource,
      textAlign: TextAlign.start,
    );
  }
}


