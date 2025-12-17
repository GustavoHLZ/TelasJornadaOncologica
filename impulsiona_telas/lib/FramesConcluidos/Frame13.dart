// frame8_cirurgias.dart
import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(MaterialApp(home: Frame13()));
}



class Frame13 extends StatelessWidget {
  const Frame13({super.key});

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
                  "Registro de recibos",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                SizedBox(height: 20),
                textoWidget(texto: "Data"),
                SizedBox(height: 12),
                textoWidget(texto: "Descrição"),
                SizedBox(height: 12),
                textoWidget(texto: 'Valor'),
                SizedBox(height: 12),
                textoWidget(texto: "Observações"),
                SizedBox(height: 30),
                
                // Botão para fotografar
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt, color: Colors.blue),
                    label: Text(
                      "Clique para Fotografar",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
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