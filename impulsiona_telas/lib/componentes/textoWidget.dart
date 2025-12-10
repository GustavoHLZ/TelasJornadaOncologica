import 'package:flutter/material.dart';

class textoWidget extends StatefulWidget {
  final String texto;
  const textoWidget({super.key, required this.texto});

  @override
  State<textoWidget> createState() => _textoWidgetState();
}

class _textoWidgetState extends State<textoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 401,
      height: 91,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),

        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        border: Border.all(color: Color(0x1E000000)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(17, 17, 0, 0),
                  child: Text(
                    widget.texto,

                    style: TextStyle(color: Color.fromRGBO(117, 117, 117, 10)),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(17, 0, 17, 17),
                child: TextFormField(
                    autofocus: false,
                    enabled: true,
                    obscureText: false,

                    enableInteractiveSelection: true,
                    decoration: InputDecoration(
                      isDense: true,
                      
  
                      hintText: '\n',

                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x31000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      hoverColor: Color(0xFFFF0000),
                    ),
                  ),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
