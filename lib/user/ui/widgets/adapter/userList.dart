import 'package:flutter/material.dart';
import 'package:flutterleanarquitecture/user/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of<UserBloc>(context);

    return Container(
      child: StreamBuilder(
        stream: userBloc.userAll,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return Column(children: userBloc.buildUsers(snapshot.data));
            case ConnectionState.done:
              return Column(children: userBloc.buildUsers(snapshot.data));
            default:
              return null;
          }
        },
      ),
    );
  }
}
