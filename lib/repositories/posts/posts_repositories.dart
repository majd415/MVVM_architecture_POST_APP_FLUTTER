import 'package:mvvm/models/posts_model.dart';

abstract class PostRepository{
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getPostById(int id);
}