import 'dart:ffi';
class nanma{
  String? uid;
  String? slno;
  String? NAME;  
  String? BALANCE;
  String? ATTENDANCE;
 
   
   nanma(
    // ignore: non_constant_identifier_names
    { this.uid,this.slno, this.NAME,this.BALANCE,this.ATTENDANCE}); 

   factory nanma.fromMap(map){
    return nanma(
     uid: map['uid'],
      slno: map['slno'],
      NAME: map['NAME'],
      BALANCE: map['BALANCE'],
      ATTENDANCE: map['ATTENDANCE']
    );
  }
     Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'slno': slno,
      'NAME': NAME,
      'BALANCE': BALANCE,
      'ATTENDANCE':ATTENDANCE
  };
}
}
