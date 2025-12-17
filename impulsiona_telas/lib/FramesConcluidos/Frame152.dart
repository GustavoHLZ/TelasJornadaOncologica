import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
 
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AcompanhamentoPsicologico(),
  ));
}

class AcompanhamentoPsicologico extends StatefulWidget {
  const AcompanhamentoPsicologico({super.key});

  @override
  State<AcompanhamentoPsicologico> createState() => _AcompanhamentoPsicologicoState();
}

class _AcompanhamentoPsicologicoState extends State<AcompanhamentoPsicologico> {
  bool _mudancaEmocional = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
       
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
        title: const Text(
          "Acompanhamento Psicológico",
          style: TextStyle(fontSize: 16.0, color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              textoWidget(texto: "Como você sentiu ao receber o diagnóstico?"),
              const SizedBox(height: 12),

              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Teve alguma mudança no estado emocional após o seu diagnóstico",
                          style: TextStyle(fontSize: 13, color: Colors.black54),
                        ),
                      ),
                      Switch(
                        value: _mudancaEmocional,
                        onChanged: (bool newValue) {
                          setState(() {
                            _mudancaEmocional = newValue;
                          });
                        },
                        activeColor: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),

              textoWidget(texto: "Quais são suas principais preocupações? (Medo...)"),
              const SizedBox(height: 12),
              
              textoWidget(texto: "O que te motiva atualmente?"),
              const SizedBox(height: 12),
              
              textoWidget(texto: "Você sente que está recebendo apoio emocional"),
              const SizedBox(height: 12),
              
              textoWidget(texto: "Quem está oferecendo apoio atualmente?"),
              const SizedBox(height: 12),
              
              textoWidget(texto: "Diga como voce está se setindo atualmente."),
              
              const SizedBox(height: 32),

              Botaopadrao(
                icone: Icons.check, 
                texto: "Salvar Registro Psicológico"
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}