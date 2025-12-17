import 'package:flutter/material.dart';

class Alertawidget extends StatelessWidget {
  const Alertawidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334.8,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFFFEF3C7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Barra Lateral Laranja
          Container(
            width: 11.19,
            height: 100,
            decoration: const BoxDecoration(
              color: Color(0xFFF59E0B),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
            ),
          ),
          // Ícone de Alerta
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFFDE68A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.warning_amber_rounded,
                color: Color(0xFFEA580C),
                size: 16,
              ),
            ),
          ),
          // Textos de Alerta
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Alerta',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Você esqueceu uma dose ontem',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Ícone de Fechar
          const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.clear_outlined,
              color: Color(0xFFEA580C),
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}