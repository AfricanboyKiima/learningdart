import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//UNDERSTANDING IT
//OLD WAY OF DOING THIS
/*
void test(List<int>? ages){//represents an optional list of integer numbers, the numbers are actually ages of random individuals
  if (ages != null){}
  length = ages.length;
}
int lengthOfListOfAges = ages?.length//We said that the conditional invocation is there to 
access the attribute or method of an object if it is not null i.e it has a value and therefore not nullable 
In the preceding code,the object's length is not accessed since we haven't declare whether or not it has a value so the solution would be:
ages = [23,56,18,61] As seen, the object has values and therefore not null as declared in this line of code, this simply means that we can access the attributes and methods of the object, our
object being a list that defines length and add() attribute and method respectively
void test(List<String>? names){
  int? length = null;
  if (names != null){//This means names is not null hence has a value
    length = names.length;//If names isn't null then we invoke the optional's length attribute through itself
    //.. and the results are assigned to the length variable
  }else{
    length = 0;//Otherwise, length becomes equal to zero when names is nullable since we would not be having
    //a list from which we could count the length
  }*/
  //NEW WAY 
  void test(List<String>? names){
    //Here we are achieving the same results as in the above code through use of the ?. condition invocation

    final length = names?.length;/*suffixing the operator before the optional
    variable means the operator checks for its nullability if it isn't null(its present) if invokes
    the length attributes defined in the optional's class and assigns the results found in it to the 
    length variable so the ?. operator is used to invoke a property or method of an optional if it isn't null.
    */ 
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //test(["kiima","samy","john","fadhil"]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
