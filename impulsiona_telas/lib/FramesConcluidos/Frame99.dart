import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaInfoApp(),
  ));
}

class TelaInfoApp extends StatelessWidget {
  const TelaInfoApp({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Texto de direitos e aviso
            const Text(
              "Este aplicativo é marca registrada da MRD Soluções Ltda. Leia atentamente os termos e condições de uso antes de utiliza-lo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 30),

            // Botão Termos e Condições
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3F66C0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Termos e Condições",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
            
            const Spacer(flex: 1),

            // Logotipo central (Simulado com texto e ícones)
            Center(
              child: Column(
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "form",
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: -2,
                        ),
                      ),
                      Transform.rotate(
                        angle: 0.5,
                        child: const Icon(
                          Icons.wifi,
                          size: 60,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "feed",
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      height: 0.8,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(flex: 2),

            // Informações de Versão e Build
            const Column(
              children: [
                Text(
                  "App Name: Form Feed",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Text(
                  "Package Name: br.inspectone.Form.Feed",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Text(
                  "Version: 1.1.70",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Text(
                  "Build Number: 373",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}