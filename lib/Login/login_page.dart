import 'package:flutter/material.dart';
import 'package:monitoring_of_degree_work/Login/Widgets/text_field_custom.dart';
import 'package:monitoring_of_degree_work/Login/signup_page.dart';
import 'package:monitoring_of_degree_work/Widgets/widgets.dart';
import 'package:monitoring_of_degree_work/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.only(top: 0),
      physics: const BouncingScrollPhysics(),
      children: [
        Stack(
          children: [
            Container(
              height: 210,
              color: const Color(0xff22222C),
            ),
            Positioned(
              top: 110,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xff22222C),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(40.0)),
                    border:
                        Border.all(color: const Color(0xff22222C), width: 0)),
              ),
            ),
            Positioned(
              top: 160,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(40.0)),
                    border: Border.all(color: Colors.white)),
              ),
            ),
            Positioned(
              top: 30,
              left: 8,
              child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'Assets/logo-usfx.png',
                    ),
                  )),
            ),
            const Positioned(
                top: 75,
                left: 110,
                child: TextFrave(
                    text: 'Bienvenido de nuevo',
                    fontSize: 25,
                    color: Colors.white)),
          ],
        ),
        _Titulo(),
        const SizedBox(height: 40),
        _EmailAndPassword(),
        _ForgotPassword(),
        const SizedBox(height: 40),
        _BottonSignIn()
      ],
    ));
  }
}

class _BottonSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff22222C),
            borderRadius: BorderRadius.circular(7.0)),
        child: TextButton(
          child: const TextFrave(
              text: 'Iniciar Sesión', color: Colors.white, fontSize: 22),
          onPressed: () {
            // Navegar a la nueva ventana al hacer clic
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const Homepage()));
          },
        ),
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25, top: 20),
      alignment: Alignment.centerRight,
      child: const TextFrave(text: '¿Has olvidado tu contraseña?'),
    );
  }
}

class _EmailAndPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.person,
              type: TextInputType.emailAddress,
              texto: 'Usuario'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Contraseña'),
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          const TextFrave(
              text: 'Iniciar Sesión',
              fontSize: 25,
              fontWeight: FontWeight.bold),
          const TextFrave(text: '/', fontSize: 25, color: Colors.grey),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SignUpPage())),
              child: const TextFrave(
                  text: 'Regístrate',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey))
        ],
      ),
    );
  }
}
