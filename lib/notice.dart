

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class notice extends StatefulWidget {
  const notice({super.key});

  @override
  State<notice> createState() => _noticeState();
}

class _noticeState extends State<notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('NOTICES',style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: 
        SafeArea(
          
          child: Column(
            children: [
            //Text("MEMBERS"),
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection("notices").snapshots(),
                builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot)
                {
                  if(snapshot.hasData){
                    final snap=snapshot.data!.docs; 
                    return ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: snap.length,
                    itemBuilder: (context, index) {
                      return Container(
                       
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,40,10,2),
                          child: Stack(
                            children: [
                                       Container(
                                margin: EdgeInsets.only(left: 19),
                                alignment: Alignment.centerLeft,
                              
                              child: Text(
                                
                                snap[index]['notice'],style: 
                              TextStyle(
                                fontFamily: 'Times New Roman',
                                color: Colors.black,
                            //    fontWeight: FontWeight.bold,
                              ),
                              ),
                              ),
                                      
                                       
                                 
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
      ),
    );
  }
}