import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Botao extends StatefulWidget {
  final String texto;

  const Botao({super.key, required this.texto});

  @override
  State<Botao> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368,
      height: 42,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), 
            spreadRadius: 0.5, 
            blurRadius: 7, 
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Align(
        alignment: AlignmentGeometry.xy(-0.75, 0),
        child: Text(widget.texto, style: GoogleFonts.inter(fontSize: 14)),
      ),
    );
  }
}
