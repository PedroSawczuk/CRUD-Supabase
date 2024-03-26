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
