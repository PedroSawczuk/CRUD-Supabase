import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'E-mail',
              icon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Senha',
              icon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Entrar'),
          ),
          SizedBox(
            height: 12,
          ),
          Text('Criar uma nova conta'),
          SizedBox(
            height: 12,
          ),
          Text('Esqueci Minha Senha')
        ],
      ),
    );
  }
}
