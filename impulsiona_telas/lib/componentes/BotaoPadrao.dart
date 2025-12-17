import 'package:flutter/material.dart';

class Botaopadrao extends StatelessWidget {
  final IconData icone;
  final String texto;
  final Color? cor; // opcional

  const Botaopadrao({
    super.key,
    required this.icone,
    required this.texto,
    this.cor, // não é required
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.infinity, // responsivo
        height: 45,
        decoration: BoxDecoration(
          color: cor ?? const Color(0xFF2563EB), // cor padrão
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icone,
              color: Colors.white,
              size: 24,
            ),
            const SizedBox(width: 8),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
