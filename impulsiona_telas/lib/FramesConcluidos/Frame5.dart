import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impulsiona_telas/componentes/Botao.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/editarfotowidget.dart';
import 'package:impulsiona_telas/componentes/fotowidget.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(MaterialApp(home: MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
                  InkWell(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,

                        // Define a borda arredondada apenas no topo
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                        ),

                        builder: (BuildContext context) {
                          return Padding(
                            padding: EdgeInsets.only(
                              // Espaço para Safe Area na parte inferior (barra de gestos/teclado)
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              // Conteúdo do Modal "Trocar Perfil"
                              padding: const EdgeInsets.fromLTRB(
                                16.0,
                                16.0,
                                16.0,
                                30.0,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // 1. CABEÇALHO: "Trocar Perfil" e Ícone de Fechar (X)
                                  Row(
                                    children: [
                                      const Spacer(),
                                      Text(
                                        'Trocar Perfil',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () =>
                                            Navigator.of(context).pop(),
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),

                                  // 2. PERFIL ATUAL (Gustavo Henrique Luiz)
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Fotowidget(
                                            url:
                                                'https://res.cloudinary.com/dtljonz0f/image/upload/f_auto/q_auto/v1/gc-v1/paris/3%20giorni%20a%20Parigi%20Tour%20Eiffel?_a=BAVAZGGf0',
                                          ),
                                          const SizedBox(width: 15),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Gustavo Henrique Luiz',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Perfil Principal',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      // Ícone de check de perfil ativo
                                      const Icon(
                                        Icons.check,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),

                                  // 3. OPÇÃO ADICIONAR PERFIL (+)
                                  Row(
                                    children: [
                                     
                                      Spacer(),
                                      Icon(Icons.add_circle_outline),
                                      Spacer(),
                                     
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Botao(texto: 'Trocar Perfil'),
                  ), 
                  SizedBox(height: 12),
                  Botao(texto: 'Segurança'),
                  SizedBox(height: 12),
                  Botao(texto: 'Permissões'),
                  SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        // Para manter as bordas arredondadas e o fundo branco, é melhor usar
                        // um Container no builder e definir o estilo do sheet como transparente.
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return Padding(
                            // Padding lateral e inferior (para afastar o modal da base da tela)
                            padding: const EdgeInsets.only(),
                            child: Container(
                              // Altura mínima para o conteúdo
                              constraints: BoxConstraints(
                                maxHeight:
                                    MediaQuery.of(context).size.height * 0.5,
                              ),
                              padding: const EdgeInsets.all(
                                16.0,
                              ), // Padding interno
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                              ),
                              child: Column(
                                // Garante que o Column use o mínimo de espaço vertical
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // 1. CABEÇALHO: "Atenção" e Ícone de Fechar (X)
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 150,
                                      ), // Empurra o resto para a direita
                                      Text(
                                        'Atenção',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: const Color(
                                            0xFFC04040,
                                          ), // Vermelho da imagem
                                        ),
                                      ),
                                      const Spacer(
                                        flex: 2,
                                      ), // Empurra o X para a borda
                                      GestureDetector(
                                        onTap: () =>
                                            Navigator.of(context).pop(),
                                        child: const Icon(
                                          Icons.close,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),

                                  // 2. INFORMAÇÕES DO PERFIL: Foto, Nome e Ícone de Check
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Container para Foto e Texto
                                      Row(
                                        children: [
                                          Fotowidget(
                                            // Widget de foto (o mesmo da resposta anterior)
                                            url:
                                                'https://res.cloudinary.com/dtljonz0f/image/upload/f_auto/q_auto/v1/gc-v1/paris/3%20giorni%20a%20Parigi%20Tour%20Eiffel?_a=BAVAZGGf0',
                                          ),
                                          const SizedBox(width: 15),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Gustavo Henrique Luiz', // Nome completo (ajustado)
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Perfil Principal',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 13,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      // Ícone de Check
                                      const Icon(
                                        Icons.check,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),

                                  // 3. TEXTO DE AVISO
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 50.0,
                                    ), // Padding para limitar o texto
                                    child: Text(
                                      'Esta operação encerra a conta do padrão excluindo todos os dados coletados ao usúario',
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30),

                                  // 4. BOTÃO PRINCIPAL
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Lógica para exclusão da conta
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                          0xFFC04040,
                                        ), // Cor vermelha do botão
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                        elevation: 0,
                                      ),
                                      child: Text(
                                        'Excluir conta',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Botao(texto: 'Excluir conta'),
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
