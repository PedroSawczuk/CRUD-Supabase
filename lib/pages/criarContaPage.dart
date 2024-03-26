import 'package:flutter/material.dart';

class CriarContaPage extends StatefulWidget {
  const CriarContaPage({super.key});

  @override
  State<CriarContaPage> createState() => _CriarContaPageState();
}

class _CriarContaPageState extends State<CriarContaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'Criar Conta',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'E-mail',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Senha',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Criar Conta'),
          ),
        ],
      ),
    );
  }
}
