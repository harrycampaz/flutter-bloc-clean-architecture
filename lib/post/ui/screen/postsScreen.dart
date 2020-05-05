import 'package:flutter/material.dart';
import 'package:flutterleanarquitecture/post/bloc/bloc_post.dart';
import 'package:flutterleanarquitecture/post/ui/widgets/postsList.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: BlocPost(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("All Posts"),
          centerTitle: true,
        ),
        body: Center(child: PostsList()),
      ),
    );
  }
}
