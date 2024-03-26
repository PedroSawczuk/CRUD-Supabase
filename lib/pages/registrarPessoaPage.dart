import 'package:crud_supabase/AppRoutes.dart';
import 'database/databaseOperations.dart';
import 'package:flutter/material.dart';

class RegistrarPessoaPage extends StatefulWidget {
  const RegistrarPessoaPage({Key? key}) : super(key: key);

  @override
  State<RegistrarPessoaPage> createState() => _RegistrarPessoaPageState();
}

class _RegistrarPessoaPageState extends State<RegistrarPessoaPage> {
  // Criação dos controllers para cada campo de texto
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _dataNascimentoController =
      TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();

  @override
  void dispose() {
    // É importante limpar os controllers quando o widget for desmontado
    _nomeController.dispose();
    _emailController.dispose();
    _cpfController.dispose();
    _dataNascimentoController.dispose();
    _telefoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade400,
        title: Text(
          'Registrar Pessoas',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Permite a rolagem da tela
        padding: EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            // Campo para o Nome Completo
            TextFormField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome Completo',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10), // Espaço entre os campos
            // Campo para o Email
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // Campo para o CPF
            TextFormField(
              controller: _cpfController,
              decoration: InputDecoration(
                labelText: 'CPF',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // Campo para a Data de Nascimento
            TextFormField(
              controller: _dataNascimentoController,
              decoration: InputDecoration(
                labelText: 'Data de Nascimento',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // Campo para o Telefone
            TextFormField(
              controller: _telefoneController,
              decoration: InputDecoration(
                labelText: 'Telefone',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width, 60),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {
                DatabaseOperations().insertPersonRowSupabase(
                    _nomeController.text,
                    _emailController.text,
                    _cpfController.text,
                    _dataNascimentoController.text,
                    _telefoneController.text);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Cadastro feito com sucesso! ')));
                print('Cadastrando...');
                Navigator.pushReplacementNamed(context, AppRoutes.homePage);
              },
              child: Text(
                'Cadastrar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
