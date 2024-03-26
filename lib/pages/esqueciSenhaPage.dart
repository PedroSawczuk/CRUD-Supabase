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
        children: [
          Text('Informe seu email para recuperar a senha'),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'E-mail',
              icon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(),
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
