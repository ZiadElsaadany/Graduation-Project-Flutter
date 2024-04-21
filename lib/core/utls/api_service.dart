import 'package:aoun_tu/core/utls/my_hive.dart';
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://khaier-production.up.railway.app';
  late Dio dio;
  ApiService() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        headers: {
          "authorization":AppHive.tokenValue ,
          "accept": "*/*"
        },
      ),
    );
  }
  Future<dynamic> get({
    required String endpoint,

  }) async {

    var response = await dio.get(endpoint);
    return response.data;
  }

  Future<dynamic> post(
      {required String endpoint, required Map<String, dynamic> data}) async {

    var response = await dio.post(
      endpoint,
      queryParameters:data,
    );
    return response.data;
  }

  Future<dynamic> postFormData({required String endpoint,required dynamic data}) async {
    FormData formData = FormData.fromMap(data);
    // data.addAll(m);
    dio.options.headers.addAll({
      "Content-Type": "multipart/form-data"
    } );
    var response = await dio.post(
      endpoint,
      data: formData,
    );

    return response.data;
  }
}
