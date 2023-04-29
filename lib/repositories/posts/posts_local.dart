import 'package:mvvm/models/posts_model.dart';
import 'package:mvvm/repositories/posts/posts_repositories.dart';

class PostsLocal extends PostRepository{
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }

}
