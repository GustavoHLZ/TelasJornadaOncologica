import 'package:flutter/material.dart';

class BotaoRegistro extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final VoidCallback onTap;

  const BotaoRegistro({
    super.key,
    required this.icone,
    required this.titulo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0), // Espaçamento entre botões
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade200), // Borda sutil
          ),
          child: Row(
            children: [
              Icon(icone, color: Colors.grey[600], size: 24), // Ícone à esquerda
              const SizedBox(width: 16),
              Text(
                titulo,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}