import 'package:flutter/material.dart';

class NewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar
          (title: Text
            ('Hola, soy nueva pagina'),
          ),
        body: Center
          (
            child: Text(' Contenido '),
          ),

      );

  }
}


