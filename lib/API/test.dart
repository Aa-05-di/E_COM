import 'package:dio/dio.dart';

List posts=[];

void getvalue() async{
  try{
    var response = await Dio().get("https://jsonplaceholder.typicode.com/users");
    posts = response.data;
    print(posts);
  }
  catch(e){
    print("Error $e");
  }
}