import 'package:flutter/material.dart';
import 'package:monitoring_of_degree_work/Login/login_page.dart';
import 'package:monitoring_of_degree_work/Login/Widgets/text_field_custom.dart';
import 'package:monitoring_of_degree_work/Widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
        _TextField(),
        _Botton()
      ],
    ));
  }
}

class _Botton extends StatelessWidget {
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
              text: 'Resgístrate', color: Colors.white, fontSize: 22),
          onPressed: () {},
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.person,
              type: TextInputType.text,
              texto: 'User name'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              texto: 'Correo electrónico'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.phone,
              type: TextInputType.number,
              texto: 'Ceclular'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Conraseña'),
          SizedBox(height: 20),
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
          TextButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const LoginPage())),
            child: const TextFrave(
                text: 'Iniciar Sesión',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
          ),
          const TextFrave(text: '/', fontSize: 25, color: Colors.grey),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SignUpPage())),
              child: const TextFrave(
                  text: 'Regístrate',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))
        ],
      ),
    );
  }
}
