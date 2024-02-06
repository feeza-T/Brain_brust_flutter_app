import 'package:flutter/material.dart';
class Wrong extends StatelessWidget {
  const Wrong({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("  wrong answer !", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,)),
              SizedBox(height: 15,),
              Text("deducted 10 points !",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,)),
              SizedBox(height: 25,),
              //ElevatedButton(child: Text("Next"),onPressed: (){},)
              Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("assets/images/wrong_answer.jpg"))
              width: 200,
              height: 200,
            ],
          )
      ),
    );

  }
}