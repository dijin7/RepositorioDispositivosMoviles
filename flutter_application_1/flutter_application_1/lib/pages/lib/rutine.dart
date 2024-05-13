import 'package:flutter/material.dart';

class Rutine extends StatefulWidget {
  @override
  _rutineState createState() => _rutineState();
}





class _rutineState  extends  State<Rutine>{

  int _Index = 1;
  List<Widget> body = const [
    Icon(Icons.newspaper),
    Icon(Icons.search),
    Icon(Icons.library_books),
    Icon(Icons.person)
  ];

  @override



  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar
          (title: const Text
            (
              'Farmear Minions',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            
          ),
          backgroundColor: Colors.black,
          body: 
         
          Column(    
            children:
            [ Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Title(color: Colors.black, child:Text('Farmear minions'),),
                    Title(color: Colors.black, child:Text('Autor: 	Diego Betancourt - Fecha: 03/01/2020'),),
                    const SizedBox(height: 20, width: 1000,),
                    const Text('Una de las cosas mas basicas con respecto al League of Legends es el farmeo. Para empezar, dejare una serie de pasos para que puedas mejorar este apartado. Esto te servira para mejorar tu economia en general dentro del juego, lo que a largo plazo te permitira ganar mas partidas.'),
                    SizedBox(height: 5),
                    const Row(
                      children: 
                      [
                        Icon
                        (
                        Icons.favorite, 
                        color: Colors.red,
                        ),
                        SizedBox(width: 2,),
                        Text('742'),
                        SizedBox(width: 10,),
                        Icon
                        (
                        Icons.share, 
                        color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Center(
              child:Card
              (
                elevation: 4,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>
                    [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      TextButton
                        (
                          onPressed: ()
                          {
                             Navigator.pushNamed(context,'pages/lib/rutine');
                          }, 
                          child: Text('Paso 1: Herramienta de practica y "Last Hit"'),
                        ),
                      Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    TextButton( 
                      child: Text('Paso 2: Control de oleadas'),
                      onPressed:() {
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    TextButton( 
                      child: Text('Paso 3: Pusheo y Movimiento de Lineas'),
                      onPressed:() {
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            ),

              Center(    
              child: Card(
                elevation: 5,
                color: Color.fromARGB(255, 255, 213, 0),
                child: 
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextButton( 
                        child: Text('Añadir a Libreria'),
                        onPressed:() {
                          Navigator.pushNamed(context,'pages/lib/lib');
                        },
                      ),                    
                    ],
                  ),
                ),
              ),
            ),  
            ],
          ),

          
          
        bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: _Index,
        onTap: (int new_Index) {
          setState((){
            _Index  = new_Index;
          });
          switch (new_Index){
            case 0:
            Navigator.pushNamed(context, 'pages/new/news');
            break;
            case 1:
            Navigator.pushNamed(context, 'pages/lib/lib');
            break;
            case 2:
            Navigator.pushNamed(context, 'pages/search/searach');
            break;
            case 3:
            Navigator.pushNamed(context, 'pages/profile/profile');
            break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.newspaper),
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            label: 'library',
            icon: Icon(Icons.library_books),
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
            backgroundColor: Colors.black
          ),
        
        ],
      ),
    );

  }
}
