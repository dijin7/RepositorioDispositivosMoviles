import 'package:flutter/material.dart';

class Lib extends StatefulWidget {
  @override
  _LibState createState() => _LibState();
}





class _LibState  extends  State<Lib>{

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
              'Libreria',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.black,
        body: Column(
          children: [
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
                    Title(color: Colors.white, 
                    child:const Text
                      (
                      'Tu Biblioteca', 
                      textAlign: TextAlign.center,
                      style: 
                        TextStyle
                          (fontSize: 20, 
                          fontWeight: FontWeight.bold
                          ),
                        ),
                    ),                    
                  ],
                ),
              ),
            ),
          ),  
          SizedBox(height:3 ),
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


