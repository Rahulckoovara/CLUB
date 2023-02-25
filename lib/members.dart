import 'package:flutter/material.dart';
import 'package:project3/new.dart';
import 'package:project3/person.dart';
import 'package:project3/persondetails.dart';
import 'package:project3/personaldetails.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';


class members extends StatefulWidget {
  const members({super.key});

  @override
  State<members> createState() => _membersState();
}

class _membersState extends State<members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
        Column(
          children: [
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("members").snapshots(),
              builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
                if(snapshot.hasData){
                  final snap=snapshot.data!.docs; 
                }else{
                  return const SizedBox();
                }
              }
        ,
            )
          ],
        ),
      ),
    );
  }
}
  //Future getMembers() async {
   // await Firebase.initializeApp();
  //var firestore= FirebaseFirestore.instance;
  ////  QuerySnapshot qn= await  FirebaseFirestore
   // .collection("members").
   // get();
    //return qn.docs;
  
  



    /*
     Container(
    child: StreamBuilder(
      future: getMembers(),
      builder:
     (_, snapshot){
      if(snapshot.connectionState=ConnectionState.waiting){
        return Center(
          child: Text("loading..."),
        );
      }else{
        ListView.builder(
          itemCount: snapshot.data.docs[index].data()['Name'],
          itemBuilder: (
          _,index
        ){
              return ListTile(
                title: Text(snapshot.data.docs[index].data()['Name']),
              );
        });
      }
    }),
       
      
      Container(
        color: Colors.white,
        child: ListView.builder(
          
          
          itemCount: people.length,
          shrinkWrap: true,
          itemBuilder:(context,index){
            final Person= people[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container
                         (
                child: Container(
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                               
                                    title: Text(Person.name.toString(),
                                    
                                    style: TextStyle(fontSize: 20,),),
                                   
                                     onTap: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) =>  newpage()));
                             
                           
                                     },
                             ),
                  ),
                ),
              ),
            );
          },
          
        ),
  
      ),

    
    );   
  }
}
 */