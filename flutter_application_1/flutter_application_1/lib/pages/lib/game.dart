import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  @override
  _gamesState createState() => _gamesState();
}





class _gamesState  extends  State<Games>{

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
              'League of Legends',
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
                    Title(color: Colors.white, child:Text('JUEGO: League of Legends'),),
                    const SizedBox(height: 20, width: 1000,),
                    const Text('Rutinas del videojuego League of Legends. League of legends  es un juego de estrategia por equipos en el que dos equipos conformados por cinco poderosos campeones se enfrentan para destruir la base del otro.'),
                    const Text('Genero: MOBA  PvP  RolAcción  Co-op'),
                    const Text('Genero: Plataformas: Windows  GeForceNow  macOS '),
                    
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
                            child: Text('Farmear Minions'),
                          ),
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
                            SizedBox(width: 20,),
                            Text('Autor: Diego Betancourt'),
                          ],
                      ),
                        Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      
                      TextButton( 
                        child: Text('Rutas de jungla'),
                        onPressed:() {
                        },
                      ),
                      const Row(
                        children: 
                        [
                            Icon
                            (
                            Icons.favorite, 
                            color: Colors.red,
                            ),
                            SizedBox(width: 2,),
                            Text('450'),
                            SizedBox(width: 10,),
                            Icon
                            (
                            Icons.share, 
                            color: Colors.green,
                            ),
                            SizedBox(width: 20,),
                            Text('Autor: Ivan Martinez'), 
                          ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      TextButton( 
                        child: Text('Wardear y como hacerlo'),
                        onPressed:() {
                        },
                      ),
                      const Row(
                        children: 
                        [
                            Icon
                            (
                            Icons.favorite, 
                            color: Colors.red,
                            ),
                            SizedBox(width: 2,),
                            Text('202'),
                            SizedBox(width: 10,),
                            Icon
                            (
                            Icons.share, 
                            color: Colors.green,
                            ),
                            SizedBox(width: 20,),
                            Text('Autor: Victor Lirola'),
                          ],
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
