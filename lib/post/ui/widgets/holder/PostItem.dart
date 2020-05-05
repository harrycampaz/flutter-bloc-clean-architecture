import 'package:flutter/material.dart';
import 'package:flutterleanarquitecture/post/model/post.dart';

class PostItem extends StatelessWidget {

  final Post post;
  final VoidCallback onPressed;

  const PostItem({Key key, this.post, this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(post.title),
        subtitle: Text(post.body),
        onTap: onPressed,
      ),
    );
  }
}
