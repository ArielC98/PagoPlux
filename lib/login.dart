import 'package:flutter/material.dart';
import 'package:pagoplux/form.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.pagoplux.com/contactos/');
const String credential = 'Pagoplus';

class Credentials extends StatefulWidget {
  const Credentials({super.key});

  @override
  State<Credentials> createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Usuario o contraseña incorrectos'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 100.0, bottom: 145.0),
          child: Image(
            width: 335,
            image: AssetImage('images/pagoplux-logo.png'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 30.0),
          child: Text(
            "Inicio de sesión",
            style: TextStyle(
                fontSize: 23,
                color: Color(0xFF455976),
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(40))),
          width: 330,
          height: 50,
          padding: const EdgeInsets.only(left: 20, right: 20),
          margin: const EdgeInsets.only(bottom: 25),
          child: TextField(
            controller: userController,
            decoration: const InputDecoration(
                hintText: 'Usuario', border: InputBorder.none),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(40))),
          width: 330,
          height: 50,
          padding: const EdgeInsets.only(left: 20, right: 20),
          margin: const EdgeInsets.only(bottom: 25),
          child: TextField(
            controller: passwordController,
            decoration: const InputDecoration(
                hintText: 'Contraseña', border: InputBorder.none),
          ),
        ),
        SizedBox(
          width: 330,
          height: 50,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              backgroundColor: const Color(0xFF35DCA4),
              foregroundColor: const Color(0xFF344257),
            ),
            child: const Text(
              'Ingresar',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              if (userController.text == '' &&
                  passwordController.text == '') {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((BuildContext context) {
                  return const FormScreen();
                })));
              } else {
                _showMyDialog();
              }
              userController.text = '';
              passwordController.text = '';
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 180.0, bottom: 10.0),
          child: Text(
            "¿Tienes preguntas?",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF344257),
                fontWeight: FontWeight.w600),
          ),
        ),
        GestureDetector(
          onTap: () {
            _launchUrl();
          },
          child: const Text(
            "Contáctanos",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xFF344257),
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF0D5ECF), Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.8]),
              ),
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Credentials(),
              )),
        ));
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
