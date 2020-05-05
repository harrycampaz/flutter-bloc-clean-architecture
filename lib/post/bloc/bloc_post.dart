import 'package:flutterleanarquitecture/post/model/post.dart';
import 'package:flutterleanarquitecture/post/repository/postRepository.dart';
import 'package:flutterleanarquitecture/post/ui/widgets/holder/PostItem.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class BlocPost implements Bloc {

  final _postRepository = PostRepository();

  Stream<List<Post>>  get postAll => _postRepository.getAllPosts().asStream();

  @override
  void dispose() {
    // TODO: implement dispose
  }

}