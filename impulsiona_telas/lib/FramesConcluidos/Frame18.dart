import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoRegistro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaOutrosRegistros(),
  ));
}

class TelaOutrosRegistros extends StatelessWidget {
  const TelaOutrosRegistros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {},
        ),
        title: const Text(
          "Voltar para tela inicial",
          style: TextStyle(color: Colors.black54, fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Outros Registros",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            BotaoRegistro(
              icone: Icons.pan_tool_outlined, 
              titulo: "Alergias",
              onTap: () => print("Abrir Alergias"),
            ),
            BotaoRegistro(
              icone: Icons.note_alt_outlined, 
              titulo: "Bloco de notas",
              onTap: () => print("Abrir Notas"),
            ),
            BotaoRegistro(
              icone: Icons.medication_liquid_outlined, 
              titulo: "Cirurgias",
              onTap: () => print("Abrir Cirurgias"),
            ),
            BotaoRegistro(
              icone: Icons.person_search_outlined, 
              titulo: "Consultas",
              onTap: () => print("Abrir Consultas"),
            ),
            BotaoRegistro(
              icone: Icons.folder_open_outlined, 
              titulo: "Documentos",
              onTap: () => print("Abrir Documentos"),
            ),
            BotaoRegistro(
              icone: Icons.coronavirus_outlined, 
              titulo: "Doenças",
              onTap: () => print("Abrir Doenças"),
            ),
            BotaoRegistro(
              icone: Icons.medication_outlined, 
              titulo: "Medicamentos",
              onTap: () => print("Abrir Medicamentos"),
            ),
            BotaoRegistro(
              icone: Icons.accessibility_new_outlined, 
              titulo: "Próteses",
              onTap: () => print("Abrir Próteses"),
            ),
            BotaoRegistro(
              icone: Icons.receipt_long_outlined, 
              titulo: "Receitas",
              onTap: () => print("Abrir Receitas"),
            ),
            BotaoRegistro(
              icone: Icons.payments_outlined, 
              titulo: "Recibos",
              onTap: () => print("Abrir Recibos"),
            ),
            BotaoRegistro(
              icone: Icons.assignment_outlined, 
              titulo: "Requisições",
              onTap: () => print("Abrir Requisições"),
            ),
            BotaoRegistro(
              icone: Icons.sentiment_dissatisfied_outlined, 
              titulo: "Sintomas",
              onTap: () => print("Abrir Sintomas"),
            ),
          ],
        ),
      ),
    );
  }
}