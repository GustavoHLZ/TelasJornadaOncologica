import 'package:flutter/material.dart';

class Botaopadrao extends StatefulWidget {
  IconData icone;
  String texto;
  Botaopadrao({super.key, required this.icone, required this.texto});

  @override
  State<Botaopadrao> createState() => _BotaopadraoState();
}

class _BotaopadraoState extends State<Botaopadrao> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: 409,
        height: 45,
        decoration: BoxDecoration(
          color: Color(0xFF2563EB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.transparent),
        ),
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                child: Icon(widget.icone, color: Colors.white, size: 24),
              ),

              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  widget.texto,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
