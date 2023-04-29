import 'package:mvvm/models/posts_model.dart';

class PostViewModel{

  PostModel? postModel;
  PostViewModel({this.postModel});
  get id=>postModel?.id;
  get userId=>postModel?.userId;
  get title=>postModel?.title?.toUpperCase();
  get body=>postModel?.body;

}