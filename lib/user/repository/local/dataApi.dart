import 'package:flutterleanarquitecture/user/model/user.dart';
import 'package:flutterleanarquitecture/user/ui/widgets/holder/userItem.dart';

class DataApi {

  Future<List<User>> getAllUsers() async {
    return User().getUsers();
  }

  List<UserItem> buildUsers(List<User> users) {
    return users.map((user) => UserItem(user: user, onPressedFabIcon: onPressUser(user))).toList();
  }

  onPressUser (User user){
    print(user.toString());
  }

}