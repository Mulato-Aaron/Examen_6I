import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RELATED"), 
        backgroundColor: Colors.white, 
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // 1. SECCIÓN IMAGEN GRANDE + TEXTO
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://raw.githubusercontent.com/Mulato-Aaron/imagenes2/refs/heads/main/imagen1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text("Descripción del producto principal", 
                  style: TextStyle(fontSize: 14, color: Colors.grey[800])),
                Container(height: 1, width: 150, color: Colors.grey[300]), // Línea decorativa tipo boceto
              ],
            ),
            
            SizedBox(height: 25),
            Text("RELATED ITEMS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 15),
            
            // 2. MINIATURAS CON TEXTO DEBAJO
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _smallBoxWithText(
                  "https://raw.githubusercontent.com/Mulato-Aaron/imagenes2/refs/heads/main/imagen4.jfif", 
                  "Yakuza 6"
                ),
                SizedBox(width: 20),
                _smallBoxWithText(
                  "https://raw.githubusercontent.com/Mulato-Aaron/imagenes2/refs/heads/main/imagen2.jfif", 
                  "Helldivers 2"
                ),
              ],
            ),
            
            Spacer(),
            
            Center(
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.grey[700]),
                onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
                child: Text("VOLVER AL PERFIL", style: TextStyle(decoration: TextDecoration.underline)),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget funcional que combina la imagen pequeña y el bloque de texto
  Widget _smallBoxWithText(String urlImagen, String titulo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 80, 
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[200]!),
            image: DecorationImage(
              image: NetworkImage(urlImagen),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(titulo, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        Text("Resident Evil 4", style: TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
  }
}