
List<int> sortAges(List<int> ages){
   ages.sort();
  return ages;
}

int getMinorAge(List<int> ages){
  return ages[0];
}

int getMayorAge(List<int> ages){
  return ages[ages.length-1];
}

double getAverageAge(List<int> ages){
  int sum = ages.reduce((current, next) => current + next);
  double average = sum / (ages.length-1);
  return average;
}