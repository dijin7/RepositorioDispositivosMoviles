import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}





class _NewsState  extends  State<News>{

  int _Index = 0;
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
              'Tu Perfil',
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded
                    (
                    child: 
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Title(
                          color: Colors.black, 
                          child:Title
                            (
                              color: Colors.black, 
                              child:const Text
                                (
                                'Recomendaciones', 
                                textAlign: TextAlign.center,
                                style: 
                                  TextStyle
                                    (fontSize: 20, 
                                    fontWeight: FontWeight.bold
                                    ),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),                  
                  ],
                  ),
              ),
            ),

            const Center(
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
                      Text('Novedades: League of Legends'),         
                    ],
                  ),
                ),
              ),
            ),

              Center(    
                child: Card(
                  elevation: 5,
                  color: Color.fromARGB(255, 127, 255, 120),
                  child: 
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                       TextButton
                          (
                            onPressed: ()
                            {
                            }, 
                            child: Text('Aprende a ocupar al nuevo campeon: Smolder'),
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
                            Text('35'),
                            SizedBox(width: 10,),
                            Icon
                            (
                            Icons.share, 
                            color: Colors.green,
                            ),
                            SizedBox(width: 10),
                            Text('Autor: Roberto Suazo'),
                          ],
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
                        TextButton
                          (
                            onPressed: ()
                            {
                            }, 
                            child: Text('Aprende sobre gankeos de jungla'),
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
                            Text('52'),
                            SizedBox(width: 10,),
                            Icon
                            (
                            Icons.share, 
                            color: Colors.green,
                            ),
                            SizedBox(width: 10),
                            Text('Autor: Nicolas Perez'),
                          ],
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


