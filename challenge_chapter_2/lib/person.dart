// ignore: file_names
class Person{
  String id="";
  String name="";
  int age=0;

  Person(this.id, this.name, this.age);

  talk(String? message){
    print('$message $name');
  }

  walk(int step){
    for(int i=1;i<step+1;i++){
      print('I have done  $i steps'); 
    }

  }


}