import 'package:flutter/cupertino.dart';
import 'pages/homePage.dart';
import 'pages/registrarPessoaPage.dart';
import 'pages/listarPessoaPage.dart';

class AppRoutes{
  static const homePage = '/homepage';
  static const registrarPessoaPage = '/registerPersonPage';
  static const listarPessoaPage = '/listPersonPage';

  static Map<String, WidgetBuilder> define(){
    return{
      homePage: (BuildContext context) => HomePage(),
      registrarPessoaPage: (BuildContext context) => RegistrarPessoaPage(),
      listarPessoaPage: (BuildContext context) => ListarPessoaPage(),
    };
  }
}