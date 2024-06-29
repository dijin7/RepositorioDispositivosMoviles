import 'package:flutter/material.dart';
import 'package:flutter_application_1/sensor.dart'; 
import 'package:flutter_application_1/list.dart';
import 'package:flutter_application_1/detail.dart';
import 'package:flutter_application_1/gestures.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),




      routes:{
        '/detail': (context) => NewPage(),
        '/list':(context) => List(),
        '/main':(context) => MyApp(),
        '/sensor':(context) => Sensor(),
        '/gestures':(context) => Gestures()
      } 









    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  


  @override

  _MyHomePageState createState(){
    print(' create state');
  return _MyHomePageState();
  }

  //State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState(){
    print('mounted = $mounted');
  }

  



  @override
  void initState(){
    super.initState();
    print('llamando a InitState()');
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print('llamando a didChangedependences()');
  }

  @override
  void didUpdateWidget(MyHomePage widget){
    super.didUpdateWidget(widget);
    print('llamando a didUpdateWidget()');
  }

  @override
  void deactivate(){
    super.deactivate();
    print('llamando a desactivate()');
  }

  @override
  void dispose(){
    super.dispose();
    print('llamando a dispose()');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('llamando a reassamble()');
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
       print('llamando a setState()');
      _counter++;
      print('|Se sumo +1 al counter|');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('|----------------------------|');
    print('llamando al build()');
    print('|----------------------------| \n');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(12.3),
            children: [
              DrawerHeader
              (
                child: Text('menu')
              ),

               ListTile(
                title: Text('Inicio'),
                onTap: () {
                  Navigator.pushNamed(context, '/main');
                },
              ),
              ListTile(
                title: Text('Lista'),
                onTap: () {
                  Navigator.pushNamed(context, '/list');
                },
              ),
              ListTile(
                title: Text('Detalles'),
                onTap: (){
                Navigator.pushNamed(context, '/detail');
                },
              ),
              ListTile(
                title: Text('Sensores'),
                onTap: () {
                  Navigator.pushNamed(context, '/sensor');
                },
              ),
              ListTile(
                title: Text('Gestos'),
                onTap:() {
                  Navigator.pushNamed(context, '/gestures');
                },
              ),




            ],
          ),
        ),



      body: Center(
        child: Column(
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
      ), 
    );
  }
}
