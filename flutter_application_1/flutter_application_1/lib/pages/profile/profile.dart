import 'package:flutter/material.dart';

class Profiles extends StatefulWidget {
  @override
  _ProfilesState createState() => _ProfilesState();
}





class _ProfilesState  extends  State<Profiles>{

  int _Index = 3;
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
                                'Perfil', 
                                textAlign: TextAlign.center,
                                style: 
                                  TextStyle
                                    (fontSize: 20, 
                                    fontWeight: FontWeight.bold
                                    ),
                                  ),
                            ),
                          ),
                          const Align(alignment: Alignment.centerLeft, child: Text('Nombre: Rodrigo Patata'),),
                          const Align(alignment: Alignment.centerLeft, child: Text('Apodo: Rodri207'),),
                          const Align(alignment: Alignment.centerLeft, child: Text('Nacionalidad: Chilena'),),
                          const SizedBox(height: 20, width: 1000,),
                          const Text('Soy un chileno de 22 años apacionado por el LoL y Overwatch.'),
                        ],
                      ),
                    ),  
                    Icon(Icons.person, color: Colors.grey,)                 
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
                      Text('Creaciones el usuario'),         
                    ],
                  ),
                ),
              ),
            ),

              Center(    
                child: Card(
                  elevation: 5,
                  color: Color.fromARGB(255, 255, 191, 96),
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
                            child: Text('Consejos para novatos de Overwatch'),
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
                            Text('22'),
                            SizedBox(width: 10,),
                            Icon
                            (
                            Icons.share, 
                            color: Colors.green,
                            ),
                          ],
                        ),
                        TextButton
                          (
                            onPressed: ()
                            {
                            }, 
                            child: Text('Editar'),
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
                          child: Text('Crear nueva rutina'),
                          onPressed:() {
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


