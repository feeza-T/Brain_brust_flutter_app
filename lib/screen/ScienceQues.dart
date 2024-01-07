import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/lifelines_sideBar.dart';
import 'package:brain_brust/screen/ScienceQues.dart';
import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/sidenavbar.dart';

import 'QuizIntro.dart';



class ScienceQues extends StatelessWidget {
  const ScienceQues({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2A1639),
        foregroundColor: Colors.white,
        title: Text('10 points', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height:100,
            width: 100,

            child:Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(strokeWidth: 12,backgroundColor: Colors.green,),
                Center( child:Text('46',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),))
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(14),
            margin:EdgeInsets.all(17),
            decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(20)),
            child: Text('Question-1:Which of the following subatomic particles is responsible for the identity of an element?',style: TextStyle(fontSize: 22,color: Colors.white),textAlign: TextAlign.center,),
          ),
          SizedBox(height:2),
          Container(
            width:MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(14),
            margin:EdgeInsets.symmetric(horizontal: 17,vertical: 5),
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4), borderRadius: BorderRadius.circular(35)),
            child: Text('A) Proton',style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
          ),
          Container(
            width:MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(14),
            margin:EdgeInsets.symmetric(horizontal: 17,vertical: 5),
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4), borderRadius: BorderRadius.circular(35)),
            child: Text('B) Neutron',style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
          ),
          Container(
            width:MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(14),
            margin:EdgeInsets.symmetric(horizontal: 17,vertical: 5),
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4), borderRadius: BorderRadius.circular(35)),
            child: Text('C) Electron',style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
          ),
          Container(
            width:MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(14),
            margin:EdgeInsets.symmetric(horizontal: 17,vertical: 5),
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4), borderRadius: BorderRadius.circular(35)),
            child: Text('D) Photon',style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
          ),
        ],),
      floatingActionButton: ElevatedButton(
        child: Text('QUIT GAME', style: TextStyle(fontSize: 20)),
        onPressed: () {
          Navigator.pop(context); // Go back to the previous screen (QuizIntro)
        },
      ),
    );
  }
}
