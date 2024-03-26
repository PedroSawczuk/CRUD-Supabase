import 'package:supabase_flutter/supabase_flutter.dart';

class DatabaseOperations {
  final supabase = Supabase.instance.client;

  Future<void> insertPersonRowSupabase(String nome, String email, String CPF,
      String data_nascimento, String telefone) async {
    await supabase.from('cadastroPessoas').insert({
      'nome': nome,
      'email': email,
      'cpf': CPF,
      'data_nascimento': data_nascimento,
      'telefone': telefone
    });
  }

  Future<List<String>> listPersonsRowSupabase() async {
    List<String> nomes = [];

    final data = await supabase.from('cadastroPessoas').select('nome');

    for (var pessoa in data) {
      nomes.add(pessoa['nome'] as String);
    }
    return nomes;
  }

  Future<void> deletePersonRowSupabase(String nome) async {
    await supabase.from('cadastroPessoas').delete().match({'nome': nome});
  }

  Future<void> updatePersonRowSupabase(String nome, String novoNome) async {
    await supabase
        .from('cadastroPessoas')
        .update({'nome': novoNome}).match({'nome': nome});
  }
}
