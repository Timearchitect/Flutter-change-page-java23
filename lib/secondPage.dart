import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:http/http.dart' as http;

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _counter = 0;

  Future<String> fetchJokes() async {
    //final response = await http.get(Uri.parse('https://cors-anywhere.herokuapp.com/https://italian-jokes.vercel.app/api/jokes'));
    final response =
        await http.get(Uri.parse('https://italian-jokes.vercel.app/api/jokes'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load jokes');
    }
  }

  Future<Map<String, dynamic>> fetchJoke() async {
    //    final response = await http.get(Uri.parse('https://italian-jokes.vercel.app/api/jokes'));
    final response = await http
        .get(Uri.parse('https://official-joke-api.appspot.com/random_joke'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load joke');
    }
  }

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
    final FirebaseDatabase rtdb = FirebaseDatabase.instance;
    DatabaseReference ref = rtdb.ref("alrikHe");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    String s;
    int age = 32;
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  FutureBuilder<String>(
                      future: fetchJokes(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator(); // Loading spinner
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          return Text('Joke: ${snapshot.data}');
                        }
                        return Text('No data');
                      }),
                  Text("hejsan"),
                  FutureBuilder<Map<String, dynamic>>(
                    future: fetchJoke(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator(); // Show loading spinner while waiting
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.hasData) {
                        // Display the joke data when available
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Joke: ${snapshot.data!['setup']}',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Punchline: ${snapshot.data!['punchline']}',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      } else {
                        return Text('No data available');
                      }
                    },
                  ),
                  stuff(),
                  stuff2(),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                  FilledButton(onPressed: null, child: Text("click here")),
                ],
              ),
            ),
            Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              //
              // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
              // action in the IDE, or press "p" in the console), to see the
              // wireframe for each widget.
              mainAxisAlignment: (age >= 18)
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: <Widget>[
                const BackButton(),
                const Text(
                  (1 + 1 == 2) ? 'true it is 2' : 'false its not correct',
                ),
                const Text(
                  'You have pushed the button this many times:',
                ),
                const Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                ),
                FilledButton.icon(
                    icon: Icon(Icons.add_circle),
                    onPressed: () => {},
                    label: Text("SetIcon")),
                FilledButton(
                    onPressed: () => {
                          s = "",
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyHomePage(title: "hejsan")))
                        },
                    child: Text("Click here")),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
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

  stuff() {
    FirebaseDatabase rtdb = FirebaseDatabase.instance;
    DatabaseReference ref= rtdb.ref("alrikHe");
    DataSnapshot snapshot;
    return FilledButton(
        onPressed: () async => {

              snapshot = await ref.get(),
              if (snapshot.exists)
                {
                  print(snapshot.value),
                }
              else
                {
                  print('No data available.'),
                }
            },
        child: Text("FUNKTION"));
  }

  stuff2() {
    var db = FirebaseFirestore.instance;
    var ref= db.collection("users");
    return FilledButton(



        onPressed: () async => {
              await ref.get().then((event) {
                for (var doc in event.docs) {
                  print("${doc.id} => ${doc.data()}");
                }
              }),
            },
        child: Text("FUNKTION firestore"));
  }
}

//stful
//stless

class AlriksWidget extends StatefulWidget {
  const AlriksWidget({super.key});

  @override
  State<AlriksWidget> createState() => _AlriksWidgetState();
}

class _AlriksWidgetState extends State<AlriksWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
