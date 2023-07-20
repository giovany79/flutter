

excersiceOne(){
  List<int> ages = [33, 15, 27, 40, 22,19,32,76,45];
  print('Sort ages: ${sortAges(ages)}!' );
  print('The Minor age is: ${ages.first}');
  print('The mayor age is: ${ages.last}');
  print('The average age is: ${getAverageAge(ages)}');
}

List<int> sortAges(List<int> ages){
   ages.sort();
  return ages;
}

int getMinorAge(List<int> ages){
  return ages.first;
}

int getMayorAge(List<int> ages){
  return ages.last;
}

double getAverageAge(List<int> ages){
  int sum = ages.reduce((current, next) => current + next);
  double average = sum / (ages.length-1);
  return average;
}