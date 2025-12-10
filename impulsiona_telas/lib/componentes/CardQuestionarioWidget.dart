import 'package:flutter/material.dart';
import 'icone.dart';

class CardQuestionarioWidget extends StatefulWidget {
   String texto;
   IconData icone;
   String titulo;
   CardQuestionarioWidget({super.key, required this.texto, required this.icone, required this.titulo});

  @override
  State<CardQuestionarioWidget> createState() => _CardQuestionarioWidgetState();
}

class _CardQuestionarioWidgetState extends State<CardQuestionarioWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 127.8,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 35),
            child: Icone(icone: widget.icone),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 35, 0, 0),
                child: Text(
                  widget.titulo,
                  style: TextStyle(
                    fontSize: 18.1,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 35, 0),
                child: Text(
                  widget.texto,
                  style: TextStyle(fontSize: 13.7, letterSpacing: 0.0),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(55, 50, 0, 0),
                child: Text(
                  'Continuar',
                  style: TextStyle(
                    color: Color(0xFF2563EB),
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 9),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFF2563EB),
                  size: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
