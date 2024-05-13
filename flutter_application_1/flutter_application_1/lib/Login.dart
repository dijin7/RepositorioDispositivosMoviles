import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/lib/game.dart';
import 'package:flutter_application_1/pages/lib/rutine.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'pages/detail.dart';
import 'pages/list.dart';

// Cosas del proyecto
import 'pages/lib/lib.dart';
import 'pages/new/news.dart';
import 'pages/profile/profile.dart';
import 'pages/search/search.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
/*
  late TextEditingController controller;
  String text = '';
*/

  // This widget is the root of your application.
  @override
/*
  void initstate(){
    super.initstate();
    controller = TextEditingController(); 
  }
*/
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Appi Flutter'),


      
      routes:{
        //'/': (context) => MyHomePage(title: 'wa',),
        '/pages/detail': (context) => NewPage(),
        '/pages/list':(context) => List(),
        '/main':(context) => MyApp(), 

        //cosas proyecto
        'pages/lib/lib':(context) => Lib(),
        'pages/new/news':(context) => News(),
        'pages/profile/profile':(context) => Profiles(),
        'pages/search/searach':(context) => Searchs(),
        'pages/lib/game':(context) => Games(),
        'pages/lib/rutine':(context) => Rutine(),
      } 


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

  late TextEditingController controller;
  String text = '';

  late TextEditingController controller2;
  String text2 = '';

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

    




    Widget Addimage(){
      if(_counter >= 15){
        return SvgPicture.asset('assets/images/victoria.svg');
      }else if(_counter >= 10 && _counter <= 14){
        return SvgPicture.asset('assets/images/derrota.svg');
      }else if(_counter < 10){
        return Text('  ');
      }

      return Text('mensaje error');
    }

  
  @override

  void initState(){
    super.initState();
    controller = TextEditingController(); 
    controller2 = TextEditingController();
  }


  Widget build(BuildContext context) {

    return Scaffold(
      /*persistentFooterButtons: 
      [
      ElevatedButton(onPressed: _incrementCounter, child: Icon(Icons.add)),
      ElevatedButton(onPressed: _lessCounter, child: Icon(Icons.remove))
      ],*/
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Loguin"),
      ),




      body: Center(
        child: Card(
        elevation: 25,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //const ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/pages/detail');},);
            Text("Username"),

                  TextField(
                    controller: controller,
                    onSubmitted: (String value){
                      setState(() {
                        text = controller.text;
                      });
                    },
                  ),

                Text("Password",),
    
                  TextField(
                    controller: controller2,
                    obscureText: true,
                    onSubmitted: (String value){
                      setState(() {
                        text = controller2.text;
                      });
                    },
                  ),
             
             
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              

               
              Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
              ),
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.pushNamed(context,'pages/new/news');
                  }, 
                  child: Text("Entrar")
                ),
              ),



              
             
              Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(

                ),
              alignment: Alignment.bottomRight,  
              child: ElevatedButton(
                onPressed: () {
                    Navigator.pushNamed(context,'/pages/list');
                  }, 
                  child: Text("List")
                ),
              ),
              
              

             ],),
              /*
            SizedBox(
              width: 100,
              height: 100,
             ),
             
              
            
            
            Container(
              width: 100,
              height: 100,
              alignment: Alignment.bottomRight,  
              child: Addimage(),
              ),

            if(_counter==15)
            const Text(
              'Victoria',
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(onPressed: _incrementCounter, child: const Text('Aumento')),
              ElevatedButton(onPressed: _lessCounter, child: const Text('Disminuir')),
              ElevatedButton(onPressed: _resetCounter, child: const Text('Reset')),
            ],)
            */

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
