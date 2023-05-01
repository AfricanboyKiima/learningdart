/*A class is a model,the latter is an informative representation of an object,system or person
In OOP, we have a number of stuff that we can define such as classes, objects,instances,propeties/attributes
or fields, methods,
*/
import 'dart:io';

class Person {
  //Define fields first
  String name;
  String surname;
  String address;
  int age;

  //Use constructor to assign defined fields to objects
  Person(this.name, this.surname, this.address, this.age);

  String getName(val) {
    val = stdin.readLineSync();
    print("your name is $val");
    return name;
  }
}

/*Extensions are a great way of extending the functionality of a class, normally, we use extensions to */
extension Run on Person {
  void run() {
    print("Runninng");
  }
}

class Board {
  String surface;
  Board(this.surface);
}

//Asynchronous programming
Future<String> getFullName(firstName, String lastName) {
  return Future.delayed(const Duration(seconds: 10), () {
    String cont = '$firstName $lastName';
    return cont;
  });
}

//Use of the future in a function
/*The main take away here is that async and await are used together to harness the power of futures*/
void test() async {
  final resultsOfCalcution = await getFullName('Fadhil', 'Kiima');
  print(resultsOfCalcution);
}

//Streams in dart : An asynchronous pipe of data
Stream<String> me() {
  return Stream.value('foo');
}

void strim() async {
  await for (final value in me()) {
    print(value);
  }
  print("Finished working");
}

Stream<String> getName() {
  return Stream.periodic(const Duration(seconds: 3), (val) {
    return "Hello World this is kiima from the democratic republic of Congo";
  });
}

void testing() async {
  await for (final val in getName()) {
    print(val);
  }
}

/*A stream is an asynchronous pipe of data.By asynchronous, I mean the ability for something to not
do something at the same time or something doesn't happen at the same time so what happens with asynchronous
programming is that we ask for a task to be done for us,however, it first takes some time before that task 
is performed for us and results returned, the processing is done later and results are returned later.
Streams and futures are the same in terms of their asynchronous capability except that with streams,when
tasks begin, the data continues to be in a state of flow until the program in terminated for instance.
With futures, we derive a mechanism that allows us to control the flow of data.However, data stops flowing
as soon as results are returned 
*/
Stream<int> calculateProductOfTwoNumber() {
  return Stream.periodic(const Duration(seconds: 1), (val) {
    return 4 * 5;
  });
}

void tester() async {
  await for (final val in calculateProductOfTwoNumber()) {
    print(val);
  }
}
