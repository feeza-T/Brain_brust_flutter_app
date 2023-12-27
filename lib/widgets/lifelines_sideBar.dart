import 'package:flutter/material.dart';

class Lifeline_Drawer extends StatefulWidget {
  const Lifeline_Drawer({super.key});

  @override
  State<Lifeline_Drawer> createState() => _Lifeline_DrawerState();
}

class _Lifeline_DrawerState extends State<Lifeline_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Text("LIFELINES",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Card(
                      elevation:12 ,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child:
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.deepPurpleAccent),
                          child:
                            Icon(Icons.people,size:32,),
                        ),
                    ),
                    SizedBox(height: 5,),
                    Text('Audience \nPoll', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation:12 ,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child:
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.deepPurpleAccent),
                        child:
                        Icon(Icons.remove_circle_outline,size:32,),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Double \nDip', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation:12 ,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child:
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.deepPurpleAccent),
                        child:
                        Icon(Icons.screen_lock_portrait,size:32,),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Ask the\nExpert', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5,),
            Divider(color: Colors.black,),
            Text("POINTS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Container(
                child: ListView.builder(
                    shrinkWrap:true,
                    itemCount: 10,itemBuilder:(context,index){
                      return Container(
                          child: ListTile(leading: Text('${index+1}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),title: Text('POINTS.${(10 )*(index+1)}',style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),),trailing:Icon(Icons.circle) ,));
                }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
