import 'package:flutter/material.dart';

class CardMaiorWidget extends StatefulWidget {
  String texto;
  IconData icone;
  CardMaiorWidget({super.key, required this.texto, required this.icone});

  @override
  State<CardMaiorWidget> createState() => _CardMaiorWidgetState();
}

class _CardMaiorWidgetState extends State<CardMaiorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 127.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Icon(
                      widget.icone,
                      color: Color(0xFF3B82F6),
                      size: 33.34,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    widget.texto,
                    style: TextStyle(
                      fontSize: 18.1,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                ),
              ],
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 50, 0, 0),
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
  }
}
