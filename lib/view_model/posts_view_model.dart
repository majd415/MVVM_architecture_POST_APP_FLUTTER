import 'package:dio/dio.dart';
import 'package:mvvm/models/posts_model.dart';
import 'package:mvvm/repositories/posts/posts_api.dart';
import 'package:mvvm/repositories/posts/posts_repositories.dart';
import 'package:mvvm/view_model/post_view_model.dart';

class PostsViewModel{

  final String title="All Posts";

PostRepository? postRepository;
  PostsViewModel({this.postRepository});

 Future<List<PostViewModel>> fetchAllPosts()async{

   List<PostModel> list=await postRepository!.getAllPosts();


   return list.map((post) =>PostViewModel(postModel: post) ).toList();

  }
}