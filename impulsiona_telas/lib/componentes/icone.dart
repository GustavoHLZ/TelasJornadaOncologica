import 'package:flutter/material.dart';

class Icone extends StatefulWidget {
  IconData icone;
  Icone({super.key, required this.icone});

  @override
  State<Icone> createState() => _IconeState();
}

class _IconeState extends State<Icone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: Color(0xFFD9EAFF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Icon(
        widget.icone,
        color: Color(0xFF3B82F6),
        size: 24,
      ),
    );;
  }
}