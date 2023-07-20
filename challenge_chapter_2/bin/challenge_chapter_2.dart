import 'package:challenge_chapter_2/challenge_chapter_2_excersice_1.dart' as challenge_chapter_2_excersice_1;
import 'package:challenge_chapter_2/challenge_chapter_2_excercise_2.dart' as challenge_chapter_2_excercise_2;
import 'package:challenge_chapter_2/challenge_chapter_2_excercise_3.dart' as challenge_chapter_2_excercise_3;
void main(List<String> arguments) {

  print ('Aguments:  $arguments[0]');

  if (arguments[0]=='1'){
    challenge_chapter_2_excersice_1.excersiceOne();
  }else if (arguments[0]=='2'){
    challenge_chapter_2_excercise_2.excersiceTwo(arguments[1]);
  }else if((arguments[0]=='3')){
    challenge_chapter_2_excercise_3.excersiceThree();
  }else{
    print('you must ingress: 1 for excercise 1, 2 for excercise 2, 3 for excersice 3');
  }
  

  
}
