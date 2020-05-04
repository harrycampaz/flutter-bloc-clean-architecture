import 'package:flutterleanarquitecture/user/model/user.dart';

class DataApi {

  Future<List<User>> getAllUsers() async {
    return User().getUsers();
  }

}