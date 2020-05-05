import 'package:flutterleanarquitecture/user/model/user.dart';
import 'package:flutterleanarquitecture/user/repository/local/dataApi.dart';
import 'package:flutterleanarquitecture/user/repository/userRepository.dart';
import 'package:flutterleanarquitecture/user/ui/widgets/holder/userItem.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class UserBloc implements Bloc {

  final _dataRepository = UserRepository();

  Stream<List<User>> get userAll => _dataRepository.getAllUsers().asStream();
  Stream<List<User>> get userRemoteAll => _dataRepository.getAllUsersRemote().asStream();

  List<UserItem>  buildUsers(List<User> users) => _dataRepository.buildUsers(users);

  @override
  void dispose() {
    // TODO: implement dispose
  }

}