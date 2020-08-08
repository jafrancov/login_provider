import 'package:flutter/material.dart';
import 'package:login_provider/src/pages/welcome_page.dart';
import 'package:login_provider/src/providers/usuario_info.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final usuarioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final usuarioInfo = Provider.of<UsuarioInfo>(context);
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            controller: usuarioController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                labelText: 'Usuario'),
          ),
          SizedBox(
            height: 16.0,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock_outline),
                labelText: 'Contraseña'),
          ),
          SizedBox(
            height: 16.0,
          ),
          RaisedButton(
            color: Colors.lightBlue.shade600,
            padding: EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {
              usuarioInfo.usuario = usuarioController.text;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
            },
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: Text(
                    "Ingresa",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
          ),
        ],
      )),
    ));
  }
}
