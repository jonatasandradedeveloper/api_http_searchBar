import 'dart:convert';

import 'package:api_http/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostControllers {
  ValueNotifier<List<PostModel>> posts = ValueNotifier([]);
  ValueNotifier<bool> loading = ValueNotifier<bool>(false);

  // Vamos criar uma variavel privada
  // somente aqui no controller que vamos ter acesso

  List<PostModel>? _searchLocal;

  callApi() async {
    var client = http.Client();
    try {
      loading.value = true;
      var response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      var decoded = jsonDecode(response.body) as List;
      posts.value = decoded.map((e) => PostModel.fromJson(e)).toList();
      // vamos atribuir um valor a ela
      _searchLocal = posts.value;
    } finally {
      client.close();
      loading.value = false;
    }
  }

  // Vamos adicionar uma feature de Buscas
  // Vai ser uma busca em memoria

  searchLocal(String value) {
    
    List<PostModel>? list = _searchLocal!
        .where(
          (e) => e.toString().toLowerCase().contains(value),
        )
        .toList();

    posts.value = list;
  }
}
