import 'package:flutter/material.dart';

class WorkFlow extends StatefulWidget {
  const WorkFlow({Key? key}) : super(key: key);

  @override
  State<WorkFlow> createState() => _WorkFlowState();
}

class _WorkFlowState extends State<WorkFlow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Text('WorkFlow',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.workspaces_rounded,size: 80.0,),
              SizedBox(height: 20.0,),
              Text('WorkFlow Page',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'PT Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




