import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STORE"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.8,
                children: [
                  // Ahora pasamos 3 datos: Nombre, Precio y URL de la imagen
                  _itemStore("Producto 1", "250", "https://raw.githubusercontent.com/Mulato-Aaron/imagenes2/refs/heads/main/imagen1.jpg"),
                  _itemStore("Producto 2", "300", "https://raw.githubusercontent.com/Mulato-Aaron/imagenes2/refs/heads/main/imagen2.jfif"),
                  _itemStore("Producto 3", "150", "https://raw.githubusercontent.com/Mulato-Aaron/imagenes2/refs/heads/main/imagen3.jfif"),
                  _itemStore("Producto 4", "500", "https://raw.githubusercontent.com/Mulato-Aaron/imagenes2/refs/heads/main/imagen4.jfif"),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
              child: Text("VER RELACIONADOS"),
            )
          ],
        ),
      ),
    );
  }

  // Agregamos el parámetro String urlImagen
  Widget _itemStore(String nombre, String precio, String urlImagen) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(4), // Un poco de redondeo para que se vea mejor
            ),
            // ClipRRect sirve para que la imagen no se salga de los bordes redondeados
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                urlImagen,
                fit: BoxFit.cover, // Esto hace que la imagen llene todo el espacio del cuadro
                errorBuilder: (context, error, stackTrace) {
                  // Si la imagen falla (URL rota), mostramos la X gris original
                  return Icon(Icons.close, color: Colors.grey);
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(nombre, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        // Rectángulo rojo de precio del boceto
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          color: Colors.red[300],
          child: Text("\$$precio", style: TextStyle(color: Colors.white, fontSize: 10)),
        ),
      ],
    );
  }
}