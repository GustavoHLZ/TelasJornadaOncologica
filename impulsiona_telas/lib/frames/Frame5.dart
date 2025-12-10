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
                  InkWell(
                    // CORREÇÃO: Removido as chaves {} desnecessárias após o '=>'
                    onTap: () => showDialog(
                      context: context,
                      barrierColor: Colors.black.withOpacity(0.5),
                      builder: (BuildContext contextDialog) {
                        return Align(
                          // CORREÇÃO 1: Usando Alignment.bottomCenter (Classe Concreta)
                          alignment: Alignment.bottomCenter,
                          child:
                              // CORREÇÃO 2: Usando EdgeInsets.only (Classe Concreta)
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 20.0,
                                  left: 16.0,
                                  right: 16.0,
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    padding: const EdgeInsets.all(20.0),
                                    // O Container ocupa a largura total permitida pelo Padding externo
                                    width: MediaQuery.of(
                                      contextDialog,
                                    ).size.width,

                                    // CORREÇÃO 3: Removida a decoração BoxShape.circle do Container principal
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // 1. Título e Ícone de Fechar
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Atenção',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFFC04040),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () => Navigator.of(
                                                contextDialog,
                                              ).pop(),
                                              child: const Icon(Icons.close),
                                            ),
                                          ],
                                        ),
                                        const Divider(color: Colors.grey),
                                        const SizedBox(height: 10),

                                        // 2. INFORMAÇÕES DO PERFIL (Integrado)
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Fotowidget(
                                              url:
                                                  'data:image/jpeg;base64,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',
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Gustavo Henrique Luiz',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Perfil Principal',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                              size: 20,
                                            ),
                                          ],
                                        ),

                                        // 3. Texto de Aviso
                                        const SizedBox(height: 16),
                                        const Text(
                                          'Esta operação encerra a conta do padrão excluindo todos os dados coletados ao usuário.',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(height: 20),

                                        // 4. Botão de Exclusão
                                        SizedBox(
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: const Color(
                                                0xFFC04040,
                                              ),
                                            ),
                                            onPressed: () => Navigator.of(
                                              contextDialog,
                                            ).pop(),
                                            child: const Text(
                                              'Excluir conta',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                        );
                      },
                    ),
                    borderRadius: BorderRadius.circular(16),
                    child: Botao(texto: 'Excluir Conta'),
                  ),
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
                  Botao(texto: 'Sair'),
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
