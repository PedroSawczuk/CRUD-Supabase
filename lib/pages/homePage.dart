import 'package:crud_supabase/AppRoutes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'Cadastro de Pessoas',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.registrarPessoaPage);
            },
            icon: Icon(Icons.person_add),
            label: Text('Adicionar Pessoas'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.listarPessoaPage);
            },
            icon: Icon(Icons.person),
            label: Text('Listar Pessoas'),
          ),
        ],
      ),
    );
  }
}
