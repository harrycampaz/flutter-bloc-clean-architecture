import 'package:flutter/material.dart';
import 'package:flutterleanarquitecture/post/ui/screen/postsScreen.dart';
import 'package:flutterleanarquitecture/user/bloc/bloc_user.dart';
import 'package:flutterleanarquitecture/user/ui/widgets/adapter/userList.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  UserBloc userBloc;

  void _incrementCounter() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => PostsScreen()));
  }

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: UserList()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}