import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
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
          "Voltar lista pets",
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

              Text("Dados do pet",style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 30),
              textoWidget(texto: "Nome"),
              SizedBox(height: 12),
              textoWidget(texto: "Sobrenome"),
               SizedBox(height: 12),
              textoWidget(texto: "Data Nascimento"),
               SizedBox(height: 12),
              textoWidget(texto: "Sexo"),
               SizedBox(height: 12),
              textoWidget(texto: "Tipo"),
               SizedBox(height: 12),
              textoWidget(texto: "Raça"),
               SizedBox(height: 12),
              textoWidget(texto: "Cor"),
              SizedBox(height: 40),
              Botaopadrao(icone: Icons.save_outlined, texto: "Salvar")
            ],
            ),
          ),
          
        ),
        
        
      ),
      
    );
  }
}