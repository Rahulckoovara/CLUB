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
          //  Text("home"),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("members").snapshots(),
              builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot)
              {
                if(snapshot.hasData){
                  final snap=snapshot.data!.docs; 
                  return ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: snap.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        //margin: EdgeInsets.only(top: 1),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 2)
                            ),
                          ],
                    
                        ),
                        child: Stack(
                          children: [
                                     Container(
                              margin: EdgeInsets.only(left: 19),
                              alignment: Alignment.centerLeft,
                            
                            child: Text(
                              
                              snap[index]['name'],style: 
                            TextStyle(
                              fontFamily: 'Times New Roman',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            ),
                                    
                                     Container(
                             margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                              alignment: Alignment.centerRight,
                            
                            child: Column(
                              children: [
                                Text(
                                  "Balance:"+ snap[index]['Amount']+" Cr".toString()
                                  ,style: 
                                TextStyle(
                                  color: Colors.green.withOpacity(0.8),
                                //  fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                            ),
                               Container(
                              margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                              alignment: Alignment.centerRight,
                            
                            child: Text(
                              "Attendance:"+ snap[index]['Attendance'].toString()
                              ,style: 
                            TextStyle(
                              color: Colors.green.withOpacity(0.8),
                            //  fontWeight: FontWeight.bold
                            ),
                            ),)
                          ],
                    
                        ),
                      ),
                    );
                    
                    
                  },
                  );
                  
                  
                }
                else{
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