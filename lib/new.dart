// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:project3/new.dart';

 class newpage extends StatelessWidget {
  const newpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('hi this is new flutter'),
           
          ],
          
        ),
      ),
    );


    
  }
} 