import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
               
                 SizedBox(height: 10),
                
                 Text("Registro de Perímetro Cefálico", style: 
                 TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                 ),
                 ),
                 SizedBox(height: 16),
                 textoWidget(texto: "Data de Início do Tratamento"),
                 SizedBox(height: 14),
                 textoWidget(texto: "Creatitina Sérica"),
                SizedBox(height: 14),
                textoWidget(texto: "Microalbuminúria"),
                SizedBox(height: 14),
                textoWidget(texto: "eGFR"),
                SizedBox(height: 14),
                textoWidget(texto: "Status"),
                SizedBox(height: 14),
                textoWidget(texto: "Observações"),
                SizedBox(height: 18),
                Botaopadrao(icone: Icons.save_outlined, texto: "Clique para adicionar"),
                
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}