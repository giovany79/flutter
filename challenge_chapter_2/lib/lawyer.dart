import 'Person.dart';

class Lawyer extends Person{

  String? speciality;
  String? university;

  Lawyer(this.speciality, this.university) : super('', '', 0);



  represent(String client, String event){
    print ('I proceed to represent the client $client with the case $event');
  }

}