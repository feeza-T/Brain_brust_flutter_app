import 'package:flutter/material.dart';

class correctAnswer extends StatefulWidget {
  const correctAnswer({Key? key}):super(key: key);

  @override
  _correctAnswerState createState()=> _correctAnswerState();

}
class _correctAnswerState extends State<correctAnswer> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Correct answer !", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,)),
              SizedBox(height: 15,),
              Text("10 points !",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500,)),
              SizedBox(height: 25,),
              //ElevatedButton(child: Text("Next"),onPressed: (){},)
              Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("assets/images/correct ans.jpg"))

            ],
          )
      ),
    );
  }
}