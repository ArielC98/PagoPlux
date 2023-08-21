import 'package:flutter/material.dart';
import 'package:pagoplux/components/reusable_textfield.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const PaymentForm());
  }
}

class PaymentForm extends StatefulWidget {
  const PaymentForm({super.key});

  @override
  State<PaymentForm> createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  final TextEditingController _nombresController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _correoElectronicoController =
      TextEditingController();
  final TextEditingController _valorPagoController = TextEditingController();
  final TextEditingController _identificacionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D5ECF),
      appBar: AppBar(
        title: const Text('Formulario de pago'),
        centerTitle: true,
        leading: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ReusableTextField(
              hintText: "Nombres",
              controller: _nombresController,
              keyboardType: TextInputType.name,
            ),
            ReusableTextField(
              hintText: "Teléfono",
              controller: _telefonoController,
              keyboardType: TextInputType.phone,
              maxLength: 10,
            ),
            ReusableTextField(
              hintText: "Dirección",
              controller: _direccionController,
              keyboardType: TextInputType.streetAddress,
            ),
            ReusableTextField(
              hintText: "Correo electrónico",
              controller: _correoElectronicoController,
              keyboardType: TextInputType.emailAddress,
            ),
            ReusableTextField(
              hintText: "Valor de pago",
              controller: _valorPagoController,
              keyboardType: TextInputType.number,
            ),
            ReusableTextField(
              hintText: "Identificación",
              controller: _identificacionController,
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: SizedBox(
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
                    'Envíar',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


