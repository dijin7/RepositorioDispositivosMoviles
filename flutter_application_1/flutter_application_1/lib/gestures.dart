import 'package:flutter/material.dart';

class Gestures extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar
          (title: Text
            ('Gestos'),
          ),
          drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Aquí esta toda la información de gestores',
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [       
              Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(

                ),
              alignment: Alignment.bottomRight,  
              child: ElevatedButton(
                onPressed: () {
                    Navigator.pushNamed(context,'/main');
                  }, 
                  child: Text("Volver")
                ),
              ),
              ],
             ),
          ],
          ),
      ),
      );

  }
}