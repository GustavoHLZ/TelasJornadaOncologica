// frame110.dart
import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(MaterialApp(home: Frame110()));
}

class Frame110 extends StatelessWidget {
  const Frame110({super.key});

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
            "Voltar para outras registros",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Registro de receitas",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  textoWidget(texto: 'Data'),
                      

                  ],
                    ),
                  
                
                
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   textoWidget(texto: 'Digite o nome do medico')
                  ]
                ),
                
                SizedBox(height: 20),
                
                // Botões para fotografar e adicionar
                Column(
                  children: [
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
                          "Clique para fotografar",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}