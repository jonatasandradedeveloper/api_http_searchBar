import 'package:flutter/material.dart';

import '../controllers/post_controllers.dart';
import 'home_shimmer_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PostControllers _controller = PostControllers();

  @override
  void initState() {
    _controller.callApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Api HTTP"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'Digite o titulo de um post',
                ),
                onChanged: _controller.searchLocal,
              ),
            ),
            AnimatedBuilder(
              animation: Listenable.merge([
                _controller.posts,
                _controller.loading,
              ]),
              builder: (_, __) => _controller.loading.value
                  //  A ideia principal é bem simples.
                  //Basicamente ele consiste em
                  //processar um espaço reservado em
                  //branco que corresponde ao tamanho
                  //do conteúdo esperado, a animação é
                  //composta pelo movimento de um
                  //gradiente da esquerda para a
                  //direita.
                  ? const HomeShimmerView()
                  : ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _controller.posts.value.length,
                      itemBuilder: (_, index) => ListTile(
                        leading: Hero(
                            tag: _controller.posts.value[index].id,
                            child: const Icon(Icons.file_copy)),
                        trailing: const Icon(Icons.arrow_forward),
                        title: Text(_controller.posts.value[index].title),
                        onTap: () => Navigator.of(context).pushNamed(
                            '/post_details',
                            arguments: _controller.posts.value[index]),
                      ),
                      separatorBuilder: (_, __) => const Divider(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
