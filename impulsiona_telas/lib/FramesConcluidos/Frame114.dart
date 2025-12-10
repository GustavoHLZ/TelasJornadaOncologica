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
             Align(
              child: Text("Registro de Pressão Arterial", style: TextStyle(
              fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold
             ),),),
            SizedBox(height: 22),
            textoWidget(texto: "Data de Inicio do Tratamento"),
            SizedBox(height: 12),
            textoWidget(texto: "Pressão sistólica(maior)"),
            SizedBox(height:12),
            textoWidget(texto: "Pressão sistólica(menor)"),
            SizedBox(height:12),
            textoWidget(texto: "BPM"),
            SizedBox(height: 12),
            textoWidget(texto: "Período"),
            SizedBox(height: 12),
            textoWidget(texto: "Observações",),
            SizedBox(height: 12),
            Botaopadrao(icone: Icons.save_outlined, texto: "Clique para adicionar")
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