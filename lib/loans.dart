import 'package:flutter/material.dart';
class loans extends StatefulWidget {
  const loans({Key? key}) : super(key: key);

  @override
  State<loans> createState() => _loansState();
}

class _loansState extends State<loans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 60,
        title:Title(color: Colors.white, child: Text(
       'LOANS'   
        )) ,
      ),
    );
  }
}