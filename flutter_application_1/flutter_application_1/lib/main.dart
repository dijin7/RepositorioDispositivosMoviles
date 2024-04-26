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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Appi Flutter'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
    void _lessCounter() {
    setState(() {
      _counter --;
    });
    }

    void _resetCounter() {
    setState(() {
      _counter = 0;
    });
    }

    void wa() {
    setState(() {

      _counter*2;
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /*persistentFooterButtons: 
      [
      ElevatedButton(onPressed: _incrementCounter, child: Icon(Icons.add)),
      ElevatedButton(onPressed: _lessCounter, child: Icon(Icons.remove))
      ],*/
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Card(
        elevation: 20,
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if(_counter==15)
            const Text(
              'Victoria',
            ),

            if(_counter==15)
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                'assets/images/victoria.jpg',
                fit: BoxFit.cover,
              ),
            ),

            if(_counter==10)
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                'assets/images/derrota.jpg',
               fit: BoxFit.cover,
              ),
            ),

            if(_counter==10)
            const Text(
              'Derrota',
            ),

            const Text(
              'Pincha en el sumar o restar.',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Row(children: [
              ElevatedButton(onPressed: _incrementCounter, child: Text('Aumento')),
              ElevatedButton(onPressed: _lessCounter, child: Text('Disminuir')),
              ElevatedButton(onPressed: _resetCounter, child: Text('Reset')),
            ],)


          ],
          ),
        ),
        ),
      ),
      /*
      bottomSheet: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'reset',
        child: const Icon(Icons.restart_alt_rounded),
      ),*/
      
      
    );
  }
}
