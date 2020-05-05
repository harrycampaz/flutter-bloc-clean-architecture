import 'package:flutter/material.dart';
import 'package:flutterleanarquitecture/post/bloc/bloc_post.dart';
import 'package:flutterleanarquitecture/post/ui/widgets/adapter/postAdapter.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class PostsList extends StatefulWidget {
  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {

  BlocPost postBloc;

  @override
  Widget build(BuildContext context) {

    postBloc = BlocProvider.of<BlocPost>(context);

    return Container(
      child: StreamBuilder(
        stream: postBloc.postAll,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){

            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.waiting:
              return CircularProgressIndicator();

            case ConnectionState.active:
              return PostAdapter(posts: snapshot.data);

            case ConnectionState.done:
              return PostAdapter(posts: snapshot.data);

            default:
              return null;
          }
        },
      ),
    );
  }
}
