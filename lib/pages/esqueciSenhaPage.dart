import 'package:flutter/material.dart';

class EsqueciSenhaPage extends StatefulWidget {
  const EsqueciSenhaPage({super.key});

  @override
  State<EsqueciSenhaPage> createState() => _EsqueciSenhaPageState();
}

class _EsqueciSenhaPageState extends State<EsqueciSenhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'Esqueci minha Senha',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Informe seu email para recuperar a senha'),
          TextField(
            decoration: InputDecoration(
              labelText: 'E-mail',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Recuperar'),
          ),
        ],
      ),
    );
  }
}
