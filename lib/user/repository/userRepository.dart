import 'package:flutterleanarquitecture/user/model/user.dart';
import 'package:flutterleanarquitecture/user/repository/local/dataApi.dart';
import 'package:flutterleanarquitecture/user/repository/remote/dataRemoteApi.dart';
import 'package:flutterleanarquitecture/user/ui/widgets/holder/userItem.dart';

class UserRepository{

  final _dataApi = DataApi();
  final _dataRemoteApi = DataRemoteApi();

  Future<List<User>> getAllUsers()=> _dataApi.getAllUsers();

  Future<List<User>> getAllUsersRemote()=> _dataRemoteApi.getAllUsers();

  List<UserItem> buildUsers(List<User> users) => _dataApi.buildUsers(users);

}