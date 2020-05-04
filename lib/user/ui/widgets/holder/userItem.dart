import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterleanarquitecture/user/model/user.dart';

class UserItem extends StatelessWidget {

  final User user;
  final VoidCallback onPressedFabIcon;


  UserItem({Key key, @required this.user, @required this.onPressedFabIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2,
        margin: EdgeInsets.all(4),
        child: Column(children: <Widget>[
          Text(user.name),
          Text(user.email)
        ],),
      ),
    );
  }
}
