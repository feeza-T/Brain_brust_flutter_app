import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Material(
          color: Color(0xff2A1639),
        child:ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child:Row(
                children: [
                  CircleAvatar(radius: 30,backgroundColor:Colors.white,),
                  SizedBox(width: 20,),
                  Column(
                  children: [
                    Text('Takwa' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize:20),),
                    SizedBox(height: 10,),
                    Text("Points: 10",  style: TextStyle(color: Colors.white),)
                  ],
                  )
                ],
              )
            ),
            Container(

              padding: EdgeInsets.only(left:25),
              child: Text('Leaderboard- 230th Rank' ,style: TextStyle(color: Colors.white),)
            ),
            SizedBox(height: 50,),
            listItem(
              label : "DAILY QUIZ",
              icon: Icons.quiz,
            ),
            listItem(
              label : "LEADERBOARD",
              icon: Icons.leaderboard,
            ),
            listItem(
              label : "How to use?",
              icon: Icons.question_answer,
            ),
            listItem(
              label : "About us",
              icon: Icons.face,
            ),
          ],
        )
      )
    );
  }
  Widget listItem({
    required String label,
    required IconData icon,
})
  {
    const color= Colors.white38;
    //const hovercolor=Colors.white60;
    
    return ListTile(
  leading: Icon(icon,color:color,),
  title: Text(label , style: TextStyle(color: Colors.white),),
  onTap: (){},
  );
  }
}
