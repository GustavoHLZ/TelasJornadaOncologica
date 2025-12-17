import 'package:flutter/material.dart';
import 'package:impulsiona_telas/componentes/BotaoPadrao.dart';
import 'package:impulsiona_telas/componentes/textoWidget.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegistroDocumentos(),
  ));
}

class RegistroDocumentos extends StatefulWidget {
  const RegistroDocumentos({super.key});

  @override
  State<RegistroDocumentos> createState() => _RegistroDocumentosState();
}

class _RegistroDocumentosState extends State<RegistroDocumentos> {
  String? _tipoDocumento;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Voltar para outros registros",
          style: TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Registro de Documentos",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),

            // Combo Box - Tipo do Documento
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 4, bottom: 8),
                child: Text("Tipo do Documento", 
                  style: TextStyle(fontSize: 12, color: Colors.grey[600])),
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              hint: const Text("Selecione"),
              value: _tipoDocumento,
              items: ["CPF", "CNH", "Certidão  de Nascimento ", "Certidão de Casamento ", "Carteira de Convênio de Saúde"]
                  .map((label) => DropdownMenuItem(
                        value: label,
                        child: Text(label),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _tipoDocumento = value;
                });
              },
            ),

            const SizedBox(height: 16),
            textoWidget(texto: "Nome do Titular"),
            const SizedBox(height: 16),
            
           
            textoWidget(texto: "Data de validade"),
            const SizedBox(height: 16),
            
            textoWidget(texto: "Observações"),
            
            const SizedBox(height: 40),


            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined, color: Color(0xFF8A2BE2)),
              label: const Text(
                "Clique para Fotografar",
                style: TextStyle(color: Color(0xFF8A2BE2)),
              ),
            ),

            const SizedBox(height: 16),

           
           
            SizedBox(
              width: double.infinity,
              child: Botaopadrao(
                icone: Icons.save_outlined,
                texto: "Clique para adicionar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}