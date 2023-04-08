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