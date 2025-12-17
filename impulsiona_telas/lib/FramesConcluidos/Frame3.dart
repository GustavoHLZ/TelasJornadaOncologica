// frame8_cirurgias.dart
import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(MaterialApp(home: Frame3()));
}

class Frame3 extends StatefulWidget {
  const Frame3({super.key});

  @override
  State<Frame3> createState() => Frame3State();
}

class Frame3State extends State<Frame3> {
  // Variável para controlar o valor selecionado no Combo Box
  String? _tipoTratamento;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Acompanhamento Sintomas",
          style: TextStyle(fontSize: 16.0, color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- COMBO BOX (Tipo de Tratamento) ---
              Text("Tipo de Tratamento", 
                style: TextStyle(fontSize: 12, color: Colors.grey[600])),
              SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                hint: Text("Selecione"),
                value: _tipoTratamento,
                items: ["Quimioterapia", "Radioterapia", "Imunoterapia", "Cirurgia", "Targetherapy"]
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _tipoTratamento = value;
                  });
                },
              ),
              
              SizedBox(height: 16),
              textoWidget(texto: "Nome do agente/ Fármaco"),
              SizedBox(height: 12),
              textoWidget(texto: "Esquema de Dosagem e Administração"),
              SizedBox(height: 12),
              textoWidget(texto: "Reações Adversas Observadas"),
              SizedBox(height: 12),
              
              // Campos com ícone (Simulando o calendário da imagem)
              textoWidget(texto: "Data de Início do Tratamento"), 
              // Dica: Você pode usar prefixIcon dentro do seu textoWidget se ele permitir
              SizedBox(height: 12),
              textoWidget(texto: "Data de Termino (Opcional)"),
              SizedBox(height: 12),
              textoWidget(texto: "Profissional Responsável (Ex: Dr. Mauro)"),
              SizedBox(height: 12),
              textoWidget(texto: "Notas Adicionais do Tratamento"),
              
              SizedBox(height: 30),
              
              // Botão Anexar Laudo
              Center(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.description_outlined, color: Color(0xFF8A2BE2)),
                  label: Text(
                    "Anexar Laudo Médico (Simulado)",
                    style: TextStyle(color: Color(0xFF8A2BE2)),
                  ),
                ),
              ),
              
              SizedBox(height: 16),
              
              // Botão Salvar Registro
              Botaopadrao(
                icone: Icons.save_outlined,
                texto: "Salvar Registro de Tratamento",
              ),
            ],
          ),
        ),
      ),
    );
  }
}