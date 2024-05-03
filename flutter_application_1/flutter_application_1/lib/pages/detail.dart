import 'package:flutter/material.dart';

class NewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar
          (title: Text
            ('Detail'),
          ),
        body: Center(    
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Aquí esta toda la información de detalles',
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


