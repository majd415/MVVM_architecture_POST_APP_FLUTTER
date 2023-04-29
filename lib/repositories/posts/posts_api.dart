import 'package:dio/dio.dart';
import 'package:mvvm/repositories/posts/posts_repositories.dart';

import '../../models/posts_model.dart';

class PostsAPI extends PostRepository{
  Future<List<PostModel>> getAllPosts()async {
    List<PostModel> posts=[];

    try{
      var    response=await Dio().get("https://jsonplaceholder.typicode.com/posts");

        var list=response.data as List;
      posts=  list.map((post) => PostModel.fromJson(post) ).toList();
           // print(list.toString());
             }
    catch(error){
      print(error.toString());


    }
    print(posts);
    return posts;
  }
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}