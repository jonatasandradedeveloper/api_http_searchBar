import 'package:flutter/material.dart';

import '../model/post_model.dart';

class PostDetailsView extends StatelessWidget {
  const PostDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(tag: args.id, child: const Icon(Icons.file_copy)),
            ),
            Flexible(
              child: Text(
                args.title,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(args.title),
            const SizedBox(
              height: 30,
            ),
            Text(args.body),
          ],
        ),
      ),
    );
  }
}
