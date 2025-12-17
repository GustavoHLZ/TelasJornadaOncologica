// frame8_cirurgias.dart
import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(MaterialApp(home: Frame6()));
}



class Frame6 extends StatelessWidget {
  const Frame6({super.key});

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
            "Voltar para outros registros",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentGeometry.center,
                child: Text(
                  "Registro Bloco de Notas",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                SizedBox(height: 20),
                textoWidget(texto: "Data"),
                SizedBox(height: 12),
                textoWidget(texto: "Observações"),
                SizedBox(height: 30),
                SizedBox(height: 16),
                Botaopadrao(
                  icone: Icons.add,
                  texto: "Clique para adicionar",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}