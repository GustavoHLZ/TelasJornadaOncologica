import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaPerfil(),
  ));
}

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Tela Perfil",
          style: TextStyle(fontSize: 16.0, color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Foto de Perfil Circular
              const Text(
                "Foto de Perfil",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f', // Imagem exemplo (Torre Eiffel)
                ),
              ),
              const SizedBox(height: 24),

              // Sequência de campos usando seu textoWidget
              textoWidget(texto: "CPF"),
              const SizedBox(height: 12),
              textoWidget(texto: "Telefone"),
              const SizedBox(height: 12),
              textoWidget(texto: "Número de Identidade ou RG"),
              const SizedBox(height: 12),
              textoWidget(texto: "Nome"),
              const SizedBox(height: 12),
              textoWidget(texto: "Sobrenome"),
              const SizedBox(height: 12),
              textoWidget(texto: "Nome Social"),
              const SizedBox(height: 12),
              textoWidget(texto: "Cidade"),
              const SizedBox(height: 12),
              textoWidget(texto: "Nome da mãe"),
              const SizedBox(height: 12),
              textoWidget(texto: "Gênero"),
              const SizedBox(height: 12),
              textoWidget(texto: "Etnia"),
              const SizedBox(height: 12),
              
              // Campo de Data com ícone simulado
              textoWidget(texto: "Data de Nascimento"),
              const SizedBox(height: 12),
              
              textoWidget(texto: "Email"),
              const SizedBox(height: 32),

              // Botão Salvar
              Botaopadrao(
                icone: Icons.save_outlined,
                texto: "Salvar",
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}