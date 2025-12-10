import 'package:flutter/material.dart';
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
          "Voltar a tela inicial",
          style: TextStyle(
            fontSize: 18.0,

          ),
         ),
        ),
        body: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(16.0), // 16 pixels de espaço em todos os lados
            child: Column(
              
            children: [
              SizedBox(height: 12),
              textoWidget(texto: "Busque outro local")
            ],
              ),
              ),
             
            
          
            ),
          
         bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
              icon: Icon(Icons.help_outline),
              label: 'Sintomas',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_add_alt_outlined),
                label: 'Adicionar',
                ),
            ],
              ),
        
      ),
      
    );
  }
}