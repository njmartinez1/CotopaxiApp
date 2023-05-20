import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [const _ColorHead(), this.child]),
    );
  }
}

class _ColorHead extends StatelessWidget {
  const _ColorHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      color: const Color.fromRGBO(65, 109, 108, 1),
      child: Stack(children: [const _TituloLogo()]),
    );
  }
}

class _TituloLogo extends StatelessWidget {
  const _TituloLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              const Positioned(
                right: 14, // Ajusta la posición hacia la derecha
                top: 3, //Ajusta la posición hacia arriba
                child: Text(
                  'Parque Nacional',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              Text(
                'Cotopaxi',
                style: TextStyle(
                    fontSize: 48,
                    color: const Color.fromRGBO(248, 255, 210, 1),
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset:
                            const Offset(0, 2), // Desplazamiento de sombra en y
                        color: Colors.black
                            .withOpacity(0.5), // Color de sombra con opacidad
                        blurRadius: 4, // Radio de desenfoque de la sombra
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
