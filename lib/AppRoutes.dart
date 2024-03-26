import 'package:flutter/cupertino.dart';
import 'pages/homePage.dart';
import 'pages/registrarPessoaPage.dart';
import 'pages/listarPessoaPage.dart';
import 'pages/loginPage.dart';
import 'pages/criarContaPage.dart';
import 'pages/esqueciSenhaPage.dart';

class AppRoutes {
  static const homePage = '/homepage';
  static const registrarPessoaPage = '/registerPersonPage';
  static const listarPessoaPage = '/listPersonPage';
  static const loginPage = '/loginPage';
  static const criarContaPage = '/criarContaPage';
  static const esqueciSenhaPage = '/esqueciSenhaPage';

  static Map<String, WidgetBuilder> define() {
    return {
      homePage: (BuildContext context) => HomePage(),
      registrarPessoaPage: (BuildContext context) => RegistrarPessoaPage(),
      listarPessoaPage: (BuildContext context) => ListarPessoaPage(),
      loginPage: (BuildContext context) => LoginPage(),
      criarContaPage: (BuildContext context) => CriarContaPage(),
      esqueciSenhaPage: (BuildContext context) => EsqueciSenhaPage(),
    };
  }
}
