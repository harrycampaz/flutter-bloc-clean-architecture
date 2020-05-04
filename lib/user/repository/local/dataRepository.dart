import 'package:flutterleanarquitecture/user/model/user.dart';
import 'package:flutterleanarquitecture/user/repository/local/dataApi.dart';

class DataRepository{

  final _dataApi = DataApi();

  Future<List<User>> getAllUsers()=> _dataApi.getAllUsers();

}