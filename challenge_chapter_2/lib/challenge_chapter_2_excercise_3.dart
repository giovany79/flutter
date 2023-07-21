excersiceThree(){
  List<String> names = ['Giovany', 'Andres', 'Daniel', 'Santiago', 'Sofia', 'Diana', 'Estefania'];
  qualifyNames(names);
}

qualifyNames(List<String> names){
  for(int i=0;i< names.length-1 ;i++){
    print('name: ${names[i]} - lenght:${names[i].length} - is : ${getEvenorOdd(names[i].length)}');
  }
}

String getEvenorOdd(int number){
  String result="";
  if(number.isEven){
      result ="even";
    }else{
      result ="odd";
    }
    return result;
}