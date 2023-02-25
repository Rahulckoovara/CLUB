// ignore_for_file: unnecessary_new

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project3/loans.dart';
import 'package:project3/new.dart';
import 'package:project3/members.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import '';


class loginscreen extends StatelessWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            Text('welcome')

          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.blue,
      centerTitle: true,
      
      title: Row(
        children: [
          SizedBox(width: 60),
          Icon(Icons.people),
          Text(  'നന്മ' ,
          textAlign: TextAlign.end,
          
          style: TextStyle(fontSize: 40,
          
              fontFamily: 'Times New Roman',
),
          ),
        ],
      ),
      toolbarHeight: 80),
      body: ListView(
        
        children: [
          CarouselSlider(items: 
          [
             Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/pic1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/pic2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/pic3.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ), 
          ]
          , options:
           CarouselOptions(
              height: 250.0,
              enlargeCenterPage: true, 
              autoPlay: true,
              aspectRatio: 19/ 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: .9,
            ),
          ),
          SizedBox(height: 20)
,            
          
       SizedBox(width: 10,),
       Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12 ,6),         
        child: Container(height: 100,width: 100,
           decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.cover,
               image: 
           AssetImage('assets/container.png',
           
           )
           ),
		color: Colors.green,
		borderRadius: BorderRadius.all(Radius.circular(10.0))
    
    ),
	child: new Center(
	  child:  TextButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>members() ));
    }, child: Text('MEMBERS',style: TextStyle(color: Colors.white,fontSize: 20,    fontFamily: 'Times New Roman'
,fontWeight: FontWeight.w700)
    
    ),
    
    )
         ),
         ),
       ),
       SizedBox(height: 20,),
       Padding(
          padding: const EdgeInsets.fromLTRB(12, 6, 12 ,6),
         child: Container(height: 100,width: 100,
         
           decoration: BoxDecoration(
             
             image: DecorationImage(
               fit: BoxFit.cover,
               image: AssetImage('assets/container.png')),
		color: Colors.green,
		borderRadius: BorderRadius.all(Radius.circular(10.0))
    
    ),
	child: new Center(
	  child: TextButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>loans()));
    }, child: Text('LOANS',style: TextStyle(color: Colors.white,fontSize: 20
    ,    fontFamily: 'Times New Roman',
fontWeight: FontWeight.w900)
    
    ),
    
    )

         ),
         ),
       ),SizedBox(height: 20,),
       Padding(
          padding: const EdgeInsets.fromLTRB(12, 6, 12 ,6),
         child: Container(height: 100,width: 100,
         
           decoration: BoxDecoration(
             
             image: DecorationImage(
               fit: BoxFit.cover,
               image: AssetImage('assets/container.png')),
		color: Colors.green,
		borderRadius: BorderRadius.all(Radius.circular(10.0))
    
    ),
	child: new Center(
	  child: TextButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>loans()));
    }, child: Text('NOTICE',style: TextStyle(color: Colors.white,fontSize: 20
    ,    fontFamily: 'Times New Roman',
fontWeight: FontWeight.w900)
    
    ),
    
    )

         ),
         ),
       
        
        
      )]
      ),

    );
    
  }
}