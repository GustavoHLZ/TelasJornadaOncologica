import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/CardMaiorWidget.dart';
import 'package:impulsiona_telas/componentes/CardPequenoWidget.dart';
import 'package:impulsiona_telas/componentes/CardQuestionarioWidget.dart';
import 'package:impulsiona_telas/componentes/alertaWidget.dart';
import 'package:impulsiona_telas/componentes/fotowidget.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeCompletaComNavBar(),
    ),
  );
}

class HomeCompletaComNavBar extends StatefulWidget {
  const HomeCompletaComNavBar({super.key});

  @override
  State<HomeCompletaComNavBar> createState() => _HomeCompletaComNavBarState();
}

class _HomeCompletaComNavBarState extends State<HomeCompletaComNavBar> {
  int _currentIndex = 0;

  // Ícones e rótulos para o BottomNavigationBar
  final List<Map<String, dynamic>> _navItems = [
    {
      'icon': Icons.home_outlined,
      'active_icon': Icons.home,
      'label': 'Home',
    },
    {
      'icon': Icons.medical_services_outlined,
      'active_icon': Icons.medical_services,
      'label': 'Sintomas',
    },
    {
      'icon': Icons.history_outlined,
      'active_icon': Icons.history,
      'label': 'Histórico',
    },
    {
      'icon': Icons.person_outline,
      'active_icon': Icons.person,
      'label': 'Perfil',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // ===== TOPO =====
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Fotowidget(
                        url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFJwQq4V787m3kNVtCz0f1vQAg1nvdWXsFRg&s",
                      ),
                      Row(
                        children: const [
                          Icon(Icons.notifications_none, color: Colors.grey),
                          SizedBox(width: 12),
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.wifi,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ===== ALERTA =====
                  const Alertawidget(),

                  const SizedBox(height: 24),

                  // ===== CARDS PEQUENOS (RESPONSIVO) =====
                  Row(
                    children: [
                      Expanded(
                        child: CardPequenoWidget(
                          icone: Icons.check_circle_outline,
                          textoPequeno: "Sintomas reg. hoje",
                          textoGrande: "2",
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CardPequenoWidget(
                          icone: Icons.calendar_today_outlined,
                          textoPequeno: "Próxima vacina",
                          textoGrande: "15 set, 14:00",
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // ===== VAMOS COMEÇAR =====
                  const Text(
                    "Vamos começar?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ===== CARDS GRANDES (RESPONSIVO) =====
                  Row(
                    children: [
                      Expanded(
                        child: CardMaiorWidget(
                          texto: "Como funciona",
                          icone: Icons.info_outline,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CardMaiorWidget(
                          texto: "Adicionar exames",
                          icone: Icons.add_chart_outlined,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // ===== ACOMPANHAMENTO =====
                  const Text(
                    "Acompanhamento",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  CardQuestionarioWidget(
                    titulo: "Último registro",
                    texto: "Tontura",
                    icone: Icons.bar_chart_outlined,
                    temBotaoContinuar: true,
                  ),

                  const SizedBox(height: 12),

                  CardQuestionarioWidget(
                    titulo: "Questionário",
                    texto: "Saúde geral",
                    icone: Icons.assignment_outlined,
                    temBotaoContinuar: true,
                  ),

                  const SizedBox(height: 12),

                  CardQuestionarioWidget(
                    titulo: "Questionário",
                    texto: "Nutricional",
                    icone: Icons.restaurant_menu_outlined,
                    temBotaoContinuar: true,
                  ),

                  const SizedBox(height: 12),

                  CardQuestionarioWidget(
                    titulo: "Questionário",
                    texto: "Sintomas",
                    icone: Icons.healing_outlined,
                    temBotaoContinuar: true,
                  ),

                  const SizedBox(height: 12),

                  CardQuestionarioWidget(
                    titulo: "Questionário",
                    texto: "Psicológico",
                    icone: Icons.psychology_outlined,
                    temBotaoContinuar: true,
                  ),

                  const SizedBox(height: 40),
                  Divider(color: Colors.grey.shade300),
                  const SizedBox(height: 20),

                  // ===== MINHA REDE DE SAÚDE =====
                  const Text(
                    "Minha Rede de Saúde",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Seção Profissionais
                  const Text(
                    "Profissionais",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Card de Locais
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 24,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              "Locais",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Continuar >",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 12),
                  
                  // Card de Profissionais
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.people_outline,
                                size: 24,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              "Profissionais",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Continuar >",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  // Título "Organizar Perfis"
                  const Text(
                    "Organizar Perfis",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Grid de perfis com ícones
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    children: [
                      _buildProfileCardWithIcon(Icons.people_outline, "Dependentes"),
                      _buildProfileCardWithIcon(Icons.supervised_user_circle_outlined, "Tutores"),
                      _buildProfileCardWithIcon(Icons.pets_outlined, "Pets"),
                      _buildProfileCardWithIcon(Icons.visibility_outlined, "Perfis Observáveis"),
                    ],
                  ),
                  
                  const SizedBox(height: 40),
                  Divider(color: Colors.grey.shade300),
                  const SizedBox(height: 20),
                  
                  // Seção "Outras Funções"
                  const Text(
                    "Outras Funções",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 24,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Clique aqui para",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "adicionar novas funções",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          "Continuar >",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  Divider(color: Colors.grey.shade300),
                  const SizedBox(height: 20),
                  
                  // Seção "Medições"
                  const Text(
                    "Medições",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.analytics_outlined,
                                size: 24,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Clique aqui para",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "adicionar novas medições",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          "Continuar >",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 80), // Espaço extra para o bottom navigation
                ],
              ),
            ),
          ),
        ],
      ),
      
      // ===== BOTTOM NAVIGATION BAR =====
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              // Aqui você pode adicionar navegação para outras telas
              switch (index) {
                case 0: // Home
                  // Já está na home
                  break;
                case 1: // Sintomas
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SintomasScreen()));
                  break;
                case 2: // Histórico
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => HistoricoScreen()));
                  break;
                case 3: // Perfil
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => PerfilScreen()));
                  break;
              }
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue.shade700,
            unselectedItemColor: Colors.grey.shade600,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 0 
                      ? _navItems[0]['active_icon']
                      : _navItems[0]['icon'],
                  size: 24,
                ),
                label: _navItems[0]['label'],
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 1 
                      ? _navItems[1]['active_icon']
                      : _navItems[1]['icon'],
                  size: 24,
                ),
                label: _navItems[1]['label'],
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 2 
                      ? _navItems[2]['active_icon']
                      : _navItems[2]['icon'],
                  size: 24,
                ),
                label: _navItems[2]['label'],
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 3 
                      ? _navItems[3]['active_icon']
                      : _navItems[3]['icon'],
                  size: 24,
                ),
                label: _navItems[3]['label'],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCardWithIcon(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              size: 24,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}