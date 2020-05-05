import 'package:flutterleanarquitecture/user/model/user.dart';
import 'package:flutterleanarquitecture/utlis/endPoint.dart';
import 'package:flutterleanarquitecture/utlis/httpHandler.dart';

class DataRemoteApi {

  HttpHandler _clientUser = HttpHandler.get();
  
  Future<List<User>> getAllUsers() => _clientUser.getRequest('${EndPoint.baseUrl}${EndPoint.usersURL}')
      .then((onValue) => onValue
      .map<User>((item) => User.fromJson(item))
      .toList());

}