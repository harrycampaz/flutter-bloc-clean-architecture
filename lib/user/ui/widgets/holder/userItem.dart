import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterleanarquitecture/user/model/user.dart';

class UserItem extends StatelessWidget {

  final User user;
  final VoidCallback onPressed;


  UserItem({Key key, @required this.user, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(user.name),
        leading: Icon(Icons.person),
        subtitle: Text(user.email),
        onTap: onPressed,
      )
    );
  }
}
