import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/Botao.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';
import '';

void main() {
  runApp( MaterialApp(home: MyWidget(),));
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Voltar para tela inicial",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        body: Padding(

          padding: EdgeInsetsGeometry.all(20),
          child: Column(
          children: [
            
            SizedBox(height: 18),
            Botao(texto: "Altura"),
            SizedBox(height: 16),
            Botao(texto: "Função Renal"),
            SizedBox(height: 16),
            Botao(texto: "Glicemia"),
            SizedBox(height: 16),
            Botao(texto: "IMC"),
            SizedBox(height: 16),
            Botao(texto: "Oximetria"),
            SizedBox(height: 16),
            Botao(texto: "PSA"),
            SizedBox(height: 16),
            Botao(texto: "Perimetro Cefálico"),
            SizedBox(height: 16),
            Botao(texto: "Peso"),
            SizedBox(height: 16),
            Botao(texto: "Pressão Arterial"),
            SizedBox(height: 16),
            Botao(texto: "Temperatura"),
        
          ],
          ),
        ),
      ),
    );
  }
}

