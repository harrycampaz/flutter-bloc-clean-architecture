
import 'package:flutterleanarquitecture/post/model/post.dart';
import 'package:flutterleanarquitecture/post/repository/remote/postRemoteApi.dart';

class PostRepository {

  final _postRemoteApi = PostRemoteApi();

  Future<List<Post>> getAllPosts() => _postRemoteApi.getAllPosts();

}