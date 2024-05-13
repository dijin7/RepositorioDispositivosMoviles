import 'package:flutter/material.dart';

class Searchs extends StatefulWidget {
  @override
  _SearchsState createState() => _SearchsState();
}





class _SearchsState  extends  State<Searchs>{

  int _Index = 2;
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
          (title: Text
            ('Busqueda'),
          ), 
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.grey,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Busca el juego',
                  icon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (String query){
                },
              ),

            ),

            


            Center(    
            child: Card(
              elevation: 5,
              color: Colors.white70,
              child: 
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Title(color: Colors.black, 
                    child:const Text
                      (
                      'League of Legends', 
                      textAlign: TextAlign.center,
                      style: 
                        TextStyle
                          (fontSize: 20, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                    const SizedBox(height: 20, width: 1000,),
                    const Text('Genero: MOBA  PvP  RolAcción  Co-op'),
                    const Text('Genero: Plataformas: Windows  GeForceNow  macOS '),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    TextButton( 
                      child: Text('Ver rutinas'),
                      onPressed:() {
                         Navigator.pushNamed(context,'pages/lib/game');
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),  
          SizedBox(height:3 ),
          Center(
            child: Card(
              elevation: 5,
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Title(color: Colors.black, 
                    child:const Text
                      (
                      'Overwatch', 
                      textAlign: TextAlign.center,
                      style: 
                        TextStyle
                          (fontSize: 20, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                    const SizedBox(height: 1, width: 1000,),
                    const Text('Genero: Disparo PrimeraPersona PvP Co-op'),
                    const Text('Genero: Plataformas: Windows PS4 PS5 NS XbOne XbSX'),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    TextButton( 
                      child: Text('Ver rutinas'),
                      onPressed:() {
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )



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






