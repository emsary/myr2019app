import 'package:dio/dio.dart';
import 'dart:async';
import '../config/http_config.dart';



Future requestPost(url,{formData}) async {
  try {
    
    Response response;
    Dio dio = new Dio();
    // post data with "application/x-www-form-urlencoded" format
    dio.options.contentType = Headers.formUrlEncodedContentType;


    if (formData == null) { //没有参数
      response = await dio.post(servicePath[url]);
    }else{
      response = await dio.post(servicePath[url],data:formData);
    }
    if (response.statusCode == 200) {
      return response;
    }else{
      throw Exception("接口异常，请检查！");
    }


  }catch(e){

    return print('error:::${e}');

  }
}

Future requestGet(url,{Parameters}) async {


}