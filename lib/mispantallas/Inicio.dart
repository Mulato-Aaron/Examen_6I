import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"), // Título del boceto
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección PROFILE del boceto
            Row(
              children: [
                // CAMBIO AQUÍ: Contenedor con imagen real
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8), // Esquinas ligeramente redondeadas
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://raw.githubusercontent.com/Mulato-Aaron/imagenes2/refs/heads/main/perfil.png",
                      ),
                      fit: BoxFit.cover, // Para que la imagen cubra todo el recuadro
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("AARON ALEXANDER", 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    Icon(Icons.favorite, color: Colors.red[200]), // Corazón del boceto
                  ],
                )
              ],
            ),
            
            SizedBox(height: 30),
            Text("PERFIL", 
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600])),
            Divider(),
            
            // Simulación de las líneas de texto del boceto
            _buildQuestionLine("AMIGOS) 69 Amigos"),
            _buildQuestionLine("JUEGOS) 666 Juegos"),
            _buildQuestionLine("LOGROS) 343 Logros"),
            
            SizedBox(height: 40),
            
            // Barra de iconos pequeña del boceto
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.person_outline),
                Icon(Icons.search),
                Icon(Icons.favorite, color: Colors.red[200]), // Corazón sombreado
              ],
            ),

            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
                child: Text("IR A STORE", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionLine(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          Container(height: 1, width: double.infinity, 
            color: Colors.grey[300], margin: EdgeInsets.only(top: 4)),
        ],
      ),
    );
  }
}