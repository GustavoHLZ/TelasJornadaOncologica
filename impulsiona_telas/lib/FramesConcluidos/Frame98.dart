import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(const MyApp());
}

class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitched,
      onChanged: (bool newValue) {
        setState(() {
          _isSwitched = newValue;
        });
      },
      activeThumbColor: Colors.blue,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      themeMode: ThemeMode.light ,
      color: Colors.white,
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Tela Perfil", style: TextStyle(fontSize: 18.0)),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),

            child: Column(
              children: [
                SizedBox(
                  width: 374,
                  height: 178,
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.grey,
                    elevation: 2,
                    child:  Column(
                      children: [


                        SizedBox(height: 20),
                        Align(
                          alignment: AlignmentGeometry.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 26.0),
                            child: Text(
                              "Biometria",
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.black,
                                fontFamily: 'Arial',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: AlignmentGeometry.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Biometria ajuda a proteger sua conta. Ative para usar a sua digital ou Face ID ao acessar o aplicativo",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontFamily: 'Arial',
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child: Text(
                                  "Ativar biometria",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    fontFamily: 'Arial',
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(left: 140.0),
                                child: SwitchExample(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Align(
                  alignment: Alignment.center,
                  child: textoWidget(texto: "Senha atual"),
                ),
                SizedBox(height: 12),
                Align(
                  alignment: Alignment.center,
                  child: textoWidget(texto: "Nova senha"),
                ),
                SizedBox(height: 12),
                Align(
                  alignment: Alignment.center,
                  child: textoWidget(texto: "Confirme a senha"),
                ),
                SizedBox(height:22),
                Align(
                  alignment: Alignment.center,
                  child: Botaopadrao(icone: Icons.save_outlined, texto: "Salvar"),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
