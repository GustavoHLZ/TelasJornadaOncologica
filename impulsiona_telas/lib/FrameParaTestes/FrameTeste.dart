import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/Botao.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/CardMaiorWidget.dart';
import 'package:impulsiona_telas/componentes/CardQuestionarioWidget.dart';
import 'package:impulsiona_telas/componentes/alertaWidget.dart';
import 'package:impulsiona_telas/componentes/editarfotowidget.dart';
import 'package:impulsiona_telas/componentes/fotowidget.dart';
import 'package:impulsiona_telas/componentes/icone.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      
      home: Scaffold(
        appBar: AppBar(
         leading: IconButton(icon: Icon(Icons.arrow_back),
         onPressed: (){
          Navigator.pop(context);
         },

         ),
        
         title: Text(
          "Voltar para outros registros",
          style: TextStyle(
            fontSize: 18.0,
            
          ),
         ),
        ),
        body: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(16.0), // 16 pixels de espaço em todos os lados
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                 SizedBox(height: 20),
                
                 Text("Registro de Peso", style: 
                 TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                 ),
                 ),
                 SizedBox(height: 16),
                Botao(texto: "Temperatura"),
                Fotowidget(url: 'https://images.unsplash.com/photo-1570097703229-b195d6dd291f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dG9ycmUlMjBlaWZmZWx8ZW58MHx8MHx8fDA%3D'),
                editarfotowidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}