

import 'package:dio/dio.dart';
import 'package:tteesstt/cash_lib/shared/constants.dart';

class DioHelper
{
  static  Dio? dio;

  static init()
  {
    dio= Dio(
      BaseOptions(
        baseUrl: 'http://192.168.100.7:8000/api',
        receiveDataWhenStatusError: true,
        validateStatus: (statusCode){
          if(statusCode == null){
            return false;
          }
          if(statusCode == 422||statusCode==401){ // your http status code
            return true;
          }else{
            return statusCode >= 200 && statusCode < 300;
          }
        },
        // receiveTimeout: ,
        // connectTimeout: ,
      )
    );
  }


  static Future <Response> getData({

     required String url,
       Map<String,dynamic>? query,
     required String token
})async
  {
    dio!.options.headers=
    {
      'Content-Type':'application/json',
      'Accept':'application/json',
      'Authorization': 'Bearer $token'
    };
    return await dio!.get(url,queryParameters: query);
  }


  static Future <Response> postData({

     required String url,
     Map<String,dynamic>? query,
     required Map<String,dynamic> data

  })async
  {
    dio!.options.headers=
    {
      'Content-Type':'application/json',
      'Accept':'application/json',
    };
    return await dio!.post
      (
        url,
        queryParameters: query,
        data: data
      );
  }

}