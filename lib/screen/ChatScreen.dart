 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Map<String, dynamic> userMap={};
     bool isLoading=false;
     final TextEditingController _search=TextEditingController();
      late FirebaseFirestore _firestore;
      @override
  void initState() {
    super.initState();
    Firebase.initializeApp().then((_) {
      _firestore = FirebaseFirestore.instance;
    });
  }
       void onSearch() async{
//FirebaseFirestore _firestore = FirebaseFirestore.instance;
setState(() {
  isLoading=true;
});


 try {
    QuerySnapshot<Map<String, dynamic>> value = await _firestore
        .collection('users')
        .where("email", isEqualTo:_search.text.toLowerCase())
        .get();

    if (value.docs.isNotEmpty) {
      setState(() {
        userMap = value.docs[0].data()!;
        isLoading = false;
      });
    } 
    else {
      // If an exact match isn't found, perform a case-insensitive search
      QuerySnapshot<Map<String, dynamic>> caseInsensitiveValue = await _firestore
          .collection('users')
          .where("email", isEqualTo: _search.text.toLowerCase())
          .get();

      if (caseInsensitiveValue.docs.isNotEmpty) {
        setState(() {
          userMap = caseInsensitiveValue.docs[0].data()!;
          isLoading = false;
        });
      }
      else {
      setState(() {
        userMap = {}; // Set userMap to an empty map if no results are found
        isLoading = false;
      });
    }
    }

    print(userMap);
  } catch (e) {
    print("Error during search: $e");
    setState(() {
      isLoading = false;
    });
  }
}
  
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MESSAGES'),
        actions: [
          IconButton(onPressed:(){ }, icon: Icon(Icons.logout))
        ],
        backgroundColor:  Color.fromARGB(255, 64, 29, 90),
        foregroundColor: Colors.white,
      ),
      body:isLoading
      ?Center(
        child: Container(height:size.height /20,
        width: size.width /20,
        child:CircularProgressIndicator(),
        ),
      )
       : Column(
        children: [
        SizedBox(
               height:size.height /20,
         ),
         Container(
          height: size.height /14,
          width: size.width ,
          alignment: Alignment.center,
          child: Container(
        height: size.height /14,
        width: size.width /1.15,
        child: TextField(

          controller: _search,
          decoration: InputDecoration(
            hintText: "Search",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
            )
          ),
        ),
          
          )
         ),

         SizedBox(
          height: size.height /50,
         ),
         ElevatedButton(onPressed: onSearch, 
         child: Text("Search"),
         ),
SizedBox(
  height: size.height /30,
),
    if (userMap != null && userMap.isNotEmpty)
         ListTile(
          onTap: (){},
          leading: Icon(Icons.account_box, color:Color.fromARGB(255, 64, 29, 90)),
          title: Text(userMap['name'],style: TextStyle(
            color: Color.fromARGB(255, 64, 29, 90),
            fontSize: 17,
            fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(userMap['email']),
          trailing:Icon(Icons.chat,color:  Color.fromARGB(255, 64, 29, 90),),

        )
        ],
      ),
    );
  
  }
}
  
