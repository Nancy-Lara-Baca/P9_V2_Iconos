import 'package:flutter/material.dart';

void main() {
  runApp(MisIconos());
}

class MisIconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nancy Lara Baca"),
          titleTextStyle: TextStyle(color: Color(0xff9dc6d9), fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xff0f455e),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nancy Lara Baca Mat: 223080501281225',
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              // Primera fila de íconos con subtítulos
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconWithSubtitle(
                    icon: Icons.star,
                    color: Colors.yellow,
                    subtitle: 'Favorito',
                  ),
                  SizedBox(width: 20), // Espacio entre íconos
                  IconWithSubtitle(
                    icon: Icons.favorite,
                    color: Colors.red,
                    subtitle: 'Me gusta',
                  ),
                  SizedBox(width: 20),
                  IconWithSubtitle(
                    icon: Icons.thumb_up,
                    color: Colors.blue,
                    subtitle: 'Like',
                  ),
                  SizedBox(width: 20),
                  IconWithSubtitle(
                    icon: Icons.thumb_down,
                    color: Colors.grey,
                    subtitle: 'Dislike',
                  ),
                ],
              ),
              SizedBox(height: 40), // Espacio entre las dos filas
              // Segunda fila de íconos con subtítulos
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconWithSubtitle(
                    icon: Icons.home,
                    color: Colors.green,
                    subtitle: 'Inicio',
                  ),
                  SizedBox(width: 20),
                  IconWithSubtitle(
                    icon: Icons.settings,
                    color: Colors.orange,
                    subtitle: 'Ajustes',
                  ),
                  SizedBox(width: 20),
                  IconWithSubtitle(
                    icon: Icons.email,
                    color: Colors.purple,
                    subtitle: 'Correo',
                  ),
                  SizedBox(width: 20),
                  IconWithSubtitle(
                    icon: Icons.phone,
                    color: Colors.teal,
                    subtitle: 'Llamar',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para ícono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String subtitle;

  const IconWithSubtitle({
    required this.icon,
    required this.color,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color),
        SizedBox(height: 8), // Espacio entre el ícono y el subtítulo
        Text(subtitle, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
