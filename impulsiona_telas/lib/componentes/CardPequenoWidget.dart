// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'icone.dart';
class CardPequenoWidget extends StatefulWidget {
  IconData icone;
  String textoGrande;
  String textoPequeno;

 CardPequenoWidget({super.key, required this.icone, required this.textoPequeno, required this.textoGrande});

  @override
  State<CardPequenoWidget> createState() => _CardPequenoWidgetState();
}

class _CardPequenoWidgetState extends State<CardPequenoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      height: 171,
      decoration: BoxDecoration(
        color:Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x1A000000),
            offset: Offset(
              0,
              2,
            ),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 90, 0),
            child: Icone(icone: Icons.calendar_today_outlined,)
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 35, 0),
            child: Text(
              widget.textoPequeno,
             style: TextStyle(fontSize: 13.8,),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 35, 0),
            child: Text(
              widget.textoGrande,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );;
  }
}