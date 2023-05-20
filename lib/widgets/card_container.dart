import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final hSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(25.0),
        decoration: _crearCard(),
        child: this.child,
      ),
    );
  }

  BoxDecoration _crearCard() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0), // Radio de borde superior izquierdo
          topRight: Radius.circular(50.0), // Radio de borde superior derecho
          bottomLeft: Radius
              .zero, // Sin radio de borde en la esquina inferior izquierda
          bottomRight:
              Radius.zero, // Sin radio de borde en la esquina inferior derecha
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black12, blurRadius: 15, offset: Offset(0, -3))
        ]);
  }
}
