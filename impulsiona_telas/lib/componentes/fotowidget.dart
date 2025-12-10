import 'package:flutter/material.dart';

class Fotowidget extends StatefulWidget {

  final String url;

  const Fotowidget({super.key, required this.url});

  @override
  State<Fotowidget> createState() => _FotowidgetState();
}

class _FotowidgetState extends State<Fotowidget> {
   Color color1 = Color(0xFF97FFAF); 
   Color color2 = Color(0xFF97C4FF); 
   Color color3 = Color(0xFFBB97FF);
   Color color4 = Color(0xFF738AFF); 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration:  BoxDecoration(
   
        gradient: SweepGradient(
         
          colors: [
          color1,
          color2,
          color3,
          color4,
    
        ],
        stops: [
          0.0,
          0.35,
          0.75,
          1.00,
        ],
        ),
        shape: BoxShape.circle,
       
       
      ),
      child: Center(
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(image: NetworkImage(widget.url), fit: BoxFit.cover),
        ),
      ),
      ),
    );
  }
}
