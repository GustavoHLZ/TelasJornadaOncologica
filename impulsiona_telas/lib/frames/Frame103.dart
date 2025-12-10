import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impulsiona_telas/componentes/Botao.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/editarfotowidget.dart';
import 'package:impulsiona_telas/componentes/fotowidget.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Voltar tela perfil", style: TextStyle(fontSize: 18.0)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 15),
                  Align(
                    child: Fotowidget(
                      url:
                          'https://res.cloudinary.com/dtljonz0f/image/upload/f_auto/q_auto/v1/gc-v1/paris/3%20giorni%20a%20Parigi%20Tour%20Eiffel?_a=BAVAZGGf0',
                    ),
                  ),
                  SizedBox(width: 35),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gustavo Henrique',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      editarfotowidget(),
                    ],
                  ),
                ],
              ),

              Column(
                children: [
                  SizedBox(height: 22),
                  Align(
                    alignment: AlignmentGeometry.directional(-0.85, 0),
                    child: Text(
                      'Conta',
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Botao(texto: 'Editar Perfil'),
                  SizedBox(height: 12),
                  Botao(texto: 'Trocar Perfil'),
                  SizedBox(height: 12),
                  Botao(texto: 'Segurança'),
                  SizedBox(height: 12),
                  Botao(texto: 'Permissões'),
                  SizedBox(height: 12),
                  Botao(texto: 'Excluir Conta'),
                  SizedBox(height: 15),
                  Align(
                    alignment: AlignmentGeometry.directional(-0.85, 0),
                    child: Text(
                      'Aplicativo',
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Botao(texto: 'Indicadores'),
                  SizedBox(height: 12),
                  Botao(texto: 'Calendário'),
                  SizedBox(height: 12),
                  Botao(texto: 'Backup'),
                  SizedBox(height: 12),
                  Botao(texto: 'Sobre'),
                  SizedBox(height: 12),
                  Botao(texto: 'Feedback'),
                  SizedBox(height: 12),
                  Botao(texto: 'Privacidade'),
                  SizedBox(height: 12),
                  Botao(texto: 'Sair',),
                  SizedBox(height: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
