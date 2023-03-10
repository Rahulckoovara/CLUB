import 'package:flutter/material.dart';
import 'package:project3/loginscreen.dart';
import 'package:project3/personaldetails.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    gotologinscreen();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image(
            image: AssetImage('assets/splash.png'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
           
          ),
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotologinscreen() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => loginscreen(),
    ));
    
  }
  

}