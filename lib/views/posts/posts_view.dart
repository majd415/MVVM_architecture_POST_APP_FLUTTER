import 'package:flutter/material.dart';
import 'package:mvvm/models/posts_model.dart';
import 'package:mvvm/repositories/posts/posts_api.dart';
import 'package:mvvm/repositories/posts/posts_local.dart';

import '../../view_model/post_view_model.dart';
import '../../view_model/posts_view_model.dart';

class PostsScreen extends StatelessWidget {

  //Dependency Injection

  //Dependency Injection
  var postsViewModel = PostsViewModel(postRepository: PostsAPI());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text("${postsViewModel.title}"),
          title: Text("${postsViewModel.title}"),

        ),
        body:Center(

          child: FutureBuilder<List<PostViewModel>>(
            future: postsViewModel.fetchAllPosts() ,
            builder:(context,snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator());
              }else{

                var posts=snapshot.data  ;
                return ListView.builder(
                  itemCount: posts!.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(posts[index].title),
                  ),
                );

              }


            },),
        )
    );
  }
}


