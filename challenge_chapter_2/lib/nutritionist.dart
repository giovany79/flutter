import 'package:challenge_chapter_2/person.dart';

class Nutritionist extends Person{
  
  String university ="";

  Nutritionist(this.university) : super('', '', 0);
  
  getIMC(double heigh, int weight){
    double imc = weight/(heigh*heigh);
    print ('IMC $imc');
  }


}