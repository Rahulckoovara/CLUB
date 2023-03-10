class FeedbackModel {
  String? slno;
  String? NAME;
  String? BALANCE;
  String? ATTENDANCE;
  

  FeedbackModel(
      {this.slno, this.NAME, this.BALANCE, this.ATTENDANCE});

  factory FeedbackModel.fromJson(dynamic json) {
    return FeedbackModel(
      slno: "${json['slno']}",
      NAME: "${json['NAME']}",
      BALANCE: "${json['BALANCE']}",
      ATTENDANCE: "${json['ATTENDANCE']}",
      
    );
  }

  Map toJson() => {
        "slno": slno,
        "NAME": NAME,
        "BALANCE": BALANCE,
        "ATTENDANCE": ATTENDANCE,
      
      };
}































/*
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class persondetails extends StatelessWidget {
  persondetails({Key? key}) : super(key: key);

  Future<List<ResultModel>> resultFuture = getResult();

  static Future<List<ResultModel>> getResult() async {
    const url =
        "https://script.google.com/macros/s/AKfycbwdS_hiIdW5HKjXrSC6GCSXoBfKtivTh-OG-z2uPVReFWBXrnbW4_MtUdCSoJNHiLWz/exec";
    final response = await http.get(Uri.parse(url));
    final body = convert.json.decode(response.body);
    return body.map<ResultModel>(ResultModel.fromJson).toList();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<ResultModel>>(

          future: resultFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return const CircularProgressIndicator();
            if (snapshot.hasData) {
              final results = snapshot.data!;

              return buildResult(results);
            } else {
              return const Text("no data");
            }
          },
        ),
      ),
    );
  }

  Widget buildResult(List<ResultModel> results) => ListView.separated(
        itemBuilder: (ctx, index) {
          Result result;
          result = Result(
              event: "event $index",
              name1: "name $index",
              point1: "Point $index",
              department1: "department $index",
              name2: "name $index",
              point2: "point $index",
              department2: "department $index",
              name3: "name $index",
              department3: "department $index",
              point3: "point $index");
          return Row(
            children: [
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: () {
                      Navigator.of(ctx).push(MaterialPageRoute(
                          builder: (ctx) => ResultDisplay(
                                event: results[index].event,
                                name1: results[index].first_name,
                                department1: results[index].first_dept,
                                point1: results[index].first_point,
                                name2: results[index].sec_name,
                                department2: results[index].sec_dept,
                                point2: results[index].sec_point,
                                name3: results[index].third_name,
                                department3: results[index].third_dept,
                                point3: results[index].third_point,
                              )));
                    },
                    child: Text(results[index].event,
                        style: TextStyle(fontSize: 16))),
              ),
            ],
          );
        },
        separatorBuilder: (ctx, index) {
          return Divider(height: 3);
        },
        itemCount: results.length,
      );
}














class persondetails extends StatelessWidget {
  final Person person;
  final String slno,NAME,BALANCE,ATTENDANCE;
  persondetails({super.key, required this.person});
  FeedbackTile({
    this.slno,this.NAME,this.BALANCE,this.ATTENDANCE;
  })

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
       appBar: AppBar(
      // title: Text(person.name.toString()),
        backgroundColor: Colors.blue,
        toolbarHeight: 60,
        

       ),
       body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('sl.no='),
            Text("balance="
              
            ),
            Text('attendance')
            // Add more detail information here
          ],
        ),
      ),
    
//https://script.google.com/macros/s/AKfycbxOfSwIa_UW47UaPx3w9ruuty30U44a2csTn4xFd1i_vtXuX28vs7fgoOxbdRPws34U/exec



    )
    );
  }
}
*/