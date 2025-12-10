import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';
import '';

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
            padding: const EdgeInsets.all(
              16.0,
            ), // 16 pixels de espaço em todos os lados
            child: Column(
              children: [
                Align(
                  alignment: AlignmentGeometry.center,

                  child: Text(
                    "Registro de Glicemia",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Align(
                    alignment: AlignmentGeometry.center,
                    child: textoWidget(texto: "Data de inicio tratamento"),
                ),

                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.center,
                  child: textoWidget(texto: "Glicemia"),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: AlignmentGeometry.center,
                  child: textoWidget(texto: "Observações"),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: AlignmentGeometry.center,

                  child: Botaopadrao(icone: Icons.save_outlined, texto: "Clique para adicionar"),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline),
              label: 'Insert',
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
