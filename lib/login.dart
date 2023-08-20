import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.pagoplux.com/contactos/');

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.white],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.1, 0.8]),
        ),
        alignment: Alignment.center,
        child: Column(
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
              child: const TextField(
                decoration: InputDecoration(
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
              child: const TextField(
                decoration: InputDecoration(
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
                  foregroundColor: Color.fromARGB(255, 52, 66, 87),
                ),
                child: const Text('Ingresar',style: TextStyle(fontSize: 18),),
                onPressed: () {
                  // Hacer algo
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top:180.0,bottom: 10.0),
              child: Text("¿Tienes preguntas?",style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600),),
            ),
            GestureDetector(
              onTap: () {
                _launchUrl();
              },
              child: const Text("Contáctanos",style: TextStyle(fontSize: 16,color: Colors.white,decoration: TextDecoration.underline,fontWeight: FontWeight.w600 ),),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
