excersiceTwo(String argument){
  
  List<int> dollarList = [20000,30000,4000,2500,1000,7600];
  
  
  convertForeingExchange(argument, dollarList);
  groupIncomes(dollarList);
  qualifyIncomes(dollarList);
  
}

convertForeingExchange(String argument, List<int> dollarList){
  print('Ejercicio 2 - Punto 1');
  if (argument=='C'){
    print('Colombian Pesos: ${toColombianPesos(dollarList)}!' );
  }else if (argument=='E'){
    print('Euros: ${toEuro(dollarList)}!' );
  }else if(argument=='D') {
    print('Dollars: $dollarList' );
  }else{
    print('Entrada no valida' );
  }
}

groupIncomes(List<int> dollarList){
  print('Ejercicio 2 - Punto 2');
  List<int> lowIncomes = dollarList.where((e) => e <= 1000).toList();
  List<int> middleIncomes = dollarList.where((e) => e >= 1000 && e<7000).toList();
  List<int> highIncomes = dollarList.where((e) => e>=7000 && e<20000).toList();
  List<int> higherIncomes = dollarList.where((e) => e>=20000).toList();
  print ('Low Incomes: $lowIncomes');
  print ('Middle Incomes: $middleIncomes');
  print ('High Incomes: $highIncomes');
  print ('Higher: $higherIncomes');

}


qualifyIncomes(List<int> dollarList){
  print('Ejercicio 2 - Punto 3');
  print('Sort incomes: ${sortIncomes(dollarList)}!' );
  print('The Minor income is: ${dollarList.first}');
  print('The mayor income is: ${dollarList.last}');
  print('The average income is: ${getAverageIncome(dollarList)}');
}

List<int> toColombianPesos(List<int> dollarList){
  List<int> colombianList = dollarList.map((e) => e * 4773).toList();
  return colombianList;
}

List<double> toEuro(List<int> dollarList){
  List<double> colombianList = dollarList.map((e) => e * 0.92).toList();
  return colombianList;
}


List<int> sortIncomes(List<int> dollarList){
   dollarList.sort();
  return dollarList;
}


double getAverageIncome(List<int> dollarList){
  int sum = dollarList.reduce((current, next) => current + next);
  double average = sum / (dollarList.length-1);
  return average;
}