import 'package:cotopaxi_app/ui/input_decoration.dart';
import 'package:cotopaxi_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            CardContainer(
              child: Column(
                children: [
                  Text(
                    "Bienvenido",
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                        color: const Color.fromRGBO(65, 109, 108, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Text(
                    "Ingresa tus datos para continuar",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const _LoginForm(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: "usuario@gmail.com",
                labelText: "Correo Electrónico",
                prefix: Icons.alternate_email),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hintText: "",
                labelText: "Contraseña",
                prefix: Icons.lock_outline),
          ),
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: const Color.fromRGBO(65, 109, 108, 1),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text(
                  "Iniciar Sesión",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {}),
          const SizedBox(
            height: 70,
          ),
          const Divider(
            color: Colors.black12, // Cambia el color de la línea
            thickness: 1.0, // Cambia el grosor de la línea
            indent: 10.0, // Ajusta la sangría izquierda de la línea
            endIndent: 10.0, // Ajusta la sangría derecha de la línea
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      )),
    );
  }
}
