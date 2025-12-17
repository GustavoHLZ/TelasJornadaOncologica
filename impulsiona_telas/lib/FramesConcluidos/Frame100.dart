import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaBackup(),
  ));
}

class TelaBackup extends StatelessWidget {
  const TelaBackup({super.key});

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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Card de Informações do Backup
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.02),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Início: 22/10/2023\n16:13",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Fim: 22/10/2023\n16:13",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
                  ),
                  const SizedBox(height: 24),
                  
                  // Botão secundário de restauração
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.blueAccent),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Restaurar este backup",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
            
            const Spacer(),

            // Botão Principal de Realizar Backup
            SizedBox(
              width: double.infinity,
              child: Botaopadrao(
                icone: Icons.cloud_upload_outlined,
                texto: "Realizar backup",
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}