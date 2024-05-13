import 'package:flutter/material.dart';

class List extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar
          (title: Text
            ('List'),
          ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //const ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/pages/detail');},);
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),   
                ),
                ListTile(
                  title: Text('Hola, Soy Lista 1'),
                ),   
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),   
                ),             
                ListTile(
                  title: Text('Hola, Soy Lista 2'),
                ),  
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),   
                ),
                ListTile(
                  title: Text('Hola, Soy Lista 3'),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),   
                ),
                
              ],  
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
      /*
      bottomSheet: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'reset',
        child: const Icon(Icons.restart_alt_rounded),
      ),*/
      



      );

  }
}


