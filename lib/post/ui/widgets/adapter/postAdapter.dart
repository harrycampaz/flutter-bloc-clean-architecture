import 'package:flutter/material.dart';
import 'package:flutterleanarquitecture/post/model/post.dart';
import 'package:flutterleanarquitecture/post/ui/widgets/holder/PostItem.dart';

class PostAdapter extends StatefulWidget {
  final List<Post> posts;

  const PostAdapter({Key key, this.posts}) : super(key: key);


  @override
  _PostAdapterState createState() => _PostAdapterState();
}

class _PostAdapterState extends State<PostAdapter> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: buildPost(widget.posts),);
  }

  List<Widget> buildPost(List<Post> posts) {
    return posts.map((post) => PostItem(post: post,  onPressed: (){},)).toList();
  }
}
