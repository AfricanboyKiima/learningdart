import 'main.dart';
void testinglfAndElseifWithElse(){
  const age = 45;
  //Returns older if one is older than or equal to 18
  //And younger if one is less than 18
  if (age >= 18){
    print('You are older than 18 and now old enought to start making some choices ');
  }else if (age < 18 ){
    print("You aren't old enought to be alone, we are still holding your hand so don't worry");
  }
}

//Create class person(model) that defines the attributes and methods of an object 
/*Classes define the attributes and methods of an object
The attributes being the characteristics of the object while the methods being the actions that can
be performed on the objet or being the actions that the object performs
. As seen below we've got a number of methods.
*/
class Person{
  //Define class attributes
  String name;
  String surname;
  int age;
  String address;

  //Create constructor method to create the attributes of our object
  Person(this.name, this.surname, this.address,this.age);

  //Method to be performed on the object and make it run
  void run(){
    print("Running");
  }

  //
  void breathe(){
    print("Breathing");
  }

  void speaks(){
    print("Speaking");
  }

  void see(){
    print("Seeing");
  }
}
class Post{
  /*The take away in dart is that when we are defining it's attributes, we have to first define its fields just
  like one would define a variable, after we can then create a constructor to map or assign the attributes
  of the object to the object each time it's instantiated
  */
  //Definition of the fields/properties/attributes
  String title;
  String content;

  //Constructor to assign attributes to our objects
  Post(this.title, this.content);
}