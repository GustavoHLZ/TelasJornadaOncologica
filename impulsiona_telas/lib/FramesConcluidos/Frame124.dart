import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SeusIndicadores(),
  ));
}

class SeusIndicadores extends StatelessWidget {
  const SeusIndicadores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Seus Indicadores",
          style: TextStyle(fontSize: 16.0, color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            const Text(
              "Seus dados de Saúde Essenciais",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            
            // Centralizando os cartões de indicadores
            
              Column(
                children: [
                  _buildIndicatorCard(
                    icon: Icons.science_outlined,
                    value: "12",
                    label: "Laboratórios",
                  ),
                  const SizedBox(height: 16),
                  _buildIndicatorCard(
                    icon: Icons.add_box_outlined,
                    value: "1",
                    label: "Exames",
                    iconColor: Colors.redAccent,
                  ),
                ],
              ),
          
            
            const Spacer(), 

            // Botão Salvar
            SizedBox(
              width: double.infinity,
              child: Botaopadrao(
                icone: Icons.check,
                texto: "Salvar Registro Nutricional",
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  
  Widget _buildIndicatorCard({
    required IconData icon,
    required String value,
    required String label,
    Color iconColor = Colors.black87,
  }) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 48, color: iconColor),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}