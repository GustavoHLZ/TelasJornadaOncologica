import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VerificacaoConexao(),
  ));
}

class VerificacaoConexao extends StatelessWidget {
  const VerificacaoConexao({super.key});

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
          "Voltar tela inicial",
          style: TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text(
              "Verifique sua Conexão",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              "Algumas funcionalidades do aplicativo requerem boa conexão com os servidores. Use esta ferramenta para avaliar a qualidade do seu sinal.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
            const SizedBox(height: 24),
            const Text(
              "Indicadores de Sinal",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Grade de Indicadores (Usando Wrap para alinhar automaticamente)
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                _buildSignalIndicator("Ausente", Colors.redAccent),
                _buildSignalIndicator("> 600 ms\nFraco", Colors.blueGrey),
                _buildSignalIndicator("< 600 ms\nRegular", Colors.orange),
                _buildSignalIndicator("< 200 ms\nBom", Colors.blue),
                _buildSignalIndicator("< 100 ms\nÓtimo", Colors.green),
              ],
            ),

            const SizedBox(height: 32),

            // Botão Verificar Conexão (Customizado para o tom azul escuro da imagem)
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D3281),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                icon: const Icon(Icons.search, size: 18),
                label: const Text("Verificar Conexão"),
              ),
            ),

            const SizedBox(height: 24),
            const Text(
              "Tempo de resposta: 88 ms",
              style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            const Text(
              "Detalhes da Conexão",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Rede Móvel: Vivo",
              style: TextStyle(color: Colors.blueAccent),
            ),
            const Text(
              "Rede Wi-Fi: Casa_5GHz",
              style: TextStyle(color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }

  // Função para criar os pequenos cartões de sinal
  Widget _buildSignalIndicator(String label, Color color) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}