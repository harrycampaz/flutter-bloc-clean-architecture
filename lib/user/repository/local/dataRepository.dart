import 'package:flutterleanarquitecture/user/model/user.dart';
import 'package:flutterleanarquitecture/user/repository/local/dataApi.dart';
import 'package:flutterleanarquitecture/user/ui/widgets/holder/userItem.dart';

class DataRepository{

  final _dataApi = DataApi();

  Future<List<User>> getAllUsers()=> _dataApi.getAllUsers();

  List<UserItem> buildUsers(List<User> users) => _dataApi.buildUsers(users);

}