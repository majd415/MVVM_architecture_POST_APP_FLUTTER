import 'package:mvvm/models/counter_model.dart';

class HomeViewModel{

  //this will provied all data the view needs
  String title="first page";
  var counterModel=CounterModel();

  int getCount(){
    return counterModel.count;
  }
  void setCount(){
    counterModel.count++;

  }
}

