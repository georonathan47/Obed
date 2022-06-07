import 'package:flutter/material.dart';
import 'package:test_flight/pages/Loading.dart';
import 'package:test_flight/pages/location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Homepage(),
      routes: {
        '/loading': (context) => const Loading(),
        '/location': (context) => const Location(),
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              const Text(
                'Hello World',
                style: TextStyle(color: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Location(),
                    ),
                  );
                },
                child: const Text(
                  'Go to Location',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loading(),
                    ),
                  );
                },
                child: const Text(
                  'Go to Loading',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// I am unable to switch to android to run the app
//what do you think probably could the problem be?
// ? It's the live share 
//i agree cos when i clicked on th link my own window went off
// ? I think the functionality for emualtors have not been implemented yet
//i guess so
//so what do you suggest we do then?
// * Zoom will be best option.
//  * The only problem is we cant work on the same screen as this
//you can, its possible when either of us enables the screen sharing feature

// ? oh ok 
//so let me set up a meeting then so you join


// ! sure