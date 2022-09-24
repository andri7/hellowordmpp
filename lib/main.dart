import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          "Halo saya latihan",
          style: TextStyle(fontSize: 8),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 12),
            alignment: Alignment.center,
            width: double.infinity,
            child: const Text(
              "Saya widget tengah",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            height: 24,
            width: double.infinity,
            color: Colors.orange,
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Saya kiri",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                "Saya kanan",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            color: Colors.yellow,
            child: Container(
              color: Colors.deepPurple,
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              child: const Text(
                "Saya Berwarna",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 60,
        color: Colors.black,
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            const Center(
              child: Text(
                "Saya Dibawah sendiri",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {},
                tooltip: 'rec',
                child: const Text(
                  "rec",
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
