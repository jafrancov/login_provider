import 'package:flutter/material.dart';
import 'package:login_provider/src/providers/usuario_info.dart';
import 'package:provider/provider.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioInfo = Provider.of<UsuarioInfo>(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Column(
            children: <Widget>[
              Text(
                'Bienvenido',
                style: TextStyle(color: Colors.blueAccent, fontSize: 25.0),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '${usuarioInfo.usuario}',
                style: TextStyle(
                    color: Colors.blueAccent.shade700,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
