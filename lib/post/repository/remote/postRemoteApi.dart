import 'package:flutterleanarquitecture/post/model/post.dart';
import 'package:flutterleanarquitecture/utlis/endPoint.dart';
import 'package:flutterleanarquitecture/utlis/httpHandler.dart';

class PostRemoteApi {
  HttpHandler _clientPost = HttpHandler.get();
  Future<List<Post>> getAllPosts() => _clientPost
      .getRequest('${EndPoint.baseUrl}${EndPoint.postURL}')
      .then((onValue) =>
          onValue.map<Post>((item) => Post.fromJson(item)).toList());
}
