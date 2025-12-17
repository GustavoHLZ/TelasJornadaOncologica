import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black54),
            onPressed: () {
              // Ação de voltar
            },
          ),
          title: const Text(
            "Acompanhamento Nutricional",
            style: TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Campo Peso Atual
                textoWidget(texto: "Peso Atual (kg)"),
                const SizedBox(height: 12),
                
                // Campo Peso Habitual
                textoWidget(texto: "Peso Habitual (kg)"),
                const SizedBox(height: 12),
                
                // Alteração no apetite
                textoWidget(texto: "Percebeu alguma alteração no seu apetite?"),
                const SizedBox(height: 12),

                // Card para Dificuldade de mastigar (com Switch)
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
                            "Esta tendo dificuldade para mastigar ou engolir?",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ),
                        const SwitchExample(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Sintomas Gastrointestinais
                textoWidget(texto: "Você apresenta sintomas gastrointestinais?"),
                const SizedBox(height: 12),

                // Nível de energia
                textoWidget(texto: "Como está o nível de energia na maior parte do dia?"),
                const SizedBox(height: 12),

                // Preferências e restrições
                textoWidget(texto: "Preferências e restrições alimentares (ex: sem g..."),
                
                const SizedBox(height: 30),

                // Botão Salvar
                Botaopadrao(
                  icone: Icons.check, 
                  texto: "Salvar Registro Nutricional"
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget de Switch separado para gerenciar o estado interno
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitched,
      onChanged: (bool newValue) {
        setState(() {
          _isSwitched = newValue;
        });
      },
      activeColor: Colors.blueAccent,
    );
  }
}