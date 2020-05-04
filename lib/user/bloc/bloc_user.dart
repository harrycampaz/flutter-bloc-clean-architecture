import 'package:flutterleanarquitecture/user/model/user.dart';
import 'package:flutterleanarquitecture/user/repository/local/dataApi.dart';
import 'package:flutterleanarquitecture/user/repository/local/dataRepository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class UserBloc implements Bloc {

  final _dataRepository = DataRepository();

  Stream<List<User>> get userAll => _dataRepository.getAllUsers().asStream();

  @override
  void dispose() {
    // TODO: implement dispose
  }

}