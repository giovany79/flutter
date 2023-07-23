import 'package:challenge_chapter_2/person.dart';


class Doctor extends Person{

  String? speciality;

  Doctor(this.speciality) : super('', '', 0);

  treatement(String illness){
    print ('I proceed to treat the disease $illness');
  }

  setSpeciatilty(String? speciality){
    this.speciality=speciality;
  }

}