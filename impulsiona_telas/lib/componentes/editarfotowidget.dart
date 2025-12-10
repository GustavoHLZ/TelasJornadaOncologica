import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class editarfotowidget extends StatefulWidget {

   editarfotowidget({super.key});

  @override
  State<editarfotowidget> createState() => _editarfotowidgetState();
}

class _editarfotowidgetState extends State<editarfotowidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        shape: BoxShape.rectangle,
        color: Color.fromARGB(0, 241, 241, 241),
        boxShadow: [ BoxShadow(
          offset: Offset(0 , 2),
          blurRadius:2,
          spreadRadius: 0,
          color: Colors.grey.withOpacity(0.095),
        )
        ]
      ),
      child: Center(
        child: Text('Editar Foto', 
        style: GoogleFonts.inter(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      ),
    );
  }
}