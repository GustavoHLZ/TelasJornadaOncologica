import 'package:flutter/material.dart';

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
          "Voltar Tela Inicial",
          style: TextStyle(
            fontSize: 18.0,

          ),
         ),
        ),
        body: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(16.0), // 16 pixels de espaço em todos os lados
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Nosso objetivo com o Padrão é simplificar sua vida reunindo em um único local todos os seus dados de saúde, que atualmente estão dispersos em vários aplicativos, resultados impressos e portais de clínicas e laboratórios",
                  
                  style: const TextStyle(fontSize: 16.0, height: 1.4), 
                  textAlign: TextAlign.justify, 
                ),
                SizedBox(height: 30),
                Align(
                  alignment: AlignmentGeometry.topLeft,
                child: Text(
                 "Avalie o padrão",
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 19.0,
                  height: 1.4,
                  fontFamily: 'Roboto',
              
              
                 ), 
                ),
                ),
                 SizedBox(height: 20),
                Align(
                alignment: AlignmentGeometry.topLeft,
                child: Icon(
                Icons.star,
                ),
                ),
                SizedBox(height: 40),
                Align(
                 alignment: AlignmentGeometry.topLeft, 
                child: Text("Solicitação de Correção"),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}