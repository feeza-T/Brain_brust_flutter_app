import 'package:flutter/material.dart';
import 'package:brain_brust/widgets/lifelines_sideBar.dart';

class ScienceQues extends StatefulWidget {
  const ScienceQues({super.key});

  @override
  State<ScienceQues> createState() => _ScienceQuesState();
}

class _ScienceQuesState extends State<ScienceQues> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/QuesBG.jpg'),fit:BoxFit.cover )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text('10 points',style: TextStyle(fontSize: 20),),
          centerTitle: true,
          backgroundColor: Color(0xff2A1639),
          foregroundColor: Colors.white,
        ),
        drawer: Lifeline_Drawer(),
        floatingActionButton: ElevatedButton(
          child: Text('QUIT GAME', style: TextStyle(fontSize: 20),),onPressed: (){},

        ),
        body:Column(
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
            ),
        );
  }
}
