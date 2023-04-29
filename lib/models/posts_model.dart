class PostModel{
  int? id;
  int? userId;
  String? title;
  String? body;
  PostModel({this.title,this.body,this.id,this.userId});
  PostModel.fromJson(Map<String,dynamic> json){

    id=json['id'];
    userId=json['userId'];

    title=json['title'];

    body=json['body'];

  }

  Map<String,dynamic> toJson(){
    return {
      "id":id,
      "userId":userId,
      "title":title,
      "body":body,

    };


  }

}