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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),

            // botão registrar pessoas
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.registrarPessoaPage);
              },
              icon: Icon(
                Icons.person_add,
                color: Colors.white,
              ),
              label: Text(
                'Adicionar Pessoas',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent.shade400,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // botão listar pessoas
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.listarPessoaPage);
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text(
                'Listar Pessoas',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent.shade400,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // botão registrar Produtos
            ElevatedButton.icon(
              onPressed: () {
                // Navigator.pushNamed(context, AppRoutes.registrarPessoaPage);
              },
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
              label: Text(
                'Adicionar Produtos',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent.shade400,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // botão listar Produtos
            ElevatedButton.icon(
              onPressed: () {
                // Navigator.pushNamed(context, AppRoutes.listarPessoaPage);
              },
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              label: Text(
                'Listar Produtos',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent.shade400,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // botão registrar Fornecedores
            ElevatedButton.icon(
              onPressed: () {
                // Navigator.pushNamed(context, AppRoutes.registrarPessoaPage);
              },
              icon: Icon(
                Icons.other_houses_rounded,
                color: Colors.white,
              ),
              label: Text(
                'Adicionar Fornecedores',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent.shade400,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // botão listar Fornecedores
            ElevatedButton.icon(
              onPressed: () {
                // Navigator.pushNamed(context, AppRoutes.listarPessoaPage);
              },
              icon: Icon(
                Icons.credit_card_outlined,
                color: Colors.white,
              ),
              label: Text(
                'Listar Fornecedores',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent.shade400,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.loginPage);
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.criarContaPage);
              },
              child: Text('Criar Conta'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.esqueciSenhaPage);
              },
              child: Text('Esqueci senha'),
            ),
          ],
        ),
      ),
    );
  }
}
