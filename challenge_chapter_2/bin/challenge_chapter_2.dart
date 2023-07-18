import 'package:challenge_chapter_2/challenge_chapter_2.dart' as challenge_chapter_2;

void main(List<String> arguments) {
  List<int> ages = [33, 15, 27, 40, 22,19,32,76,45];
  print('Sort ages: ${challenge_chapter_2.sortAges(ages)}!' );
  print('The Minor age is: ${challenge_chapter_2.getMinorAge(ages)}');
  print('The mayor age is: ${challenge_chapter_2.getMayorAge(ages)}');
  print('The average age is: ${challenge_chapter_2.getAverageAge(ages)}');
}
