import 'package:aoun_tu/core/utls/loggers.dart';
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
          // "Authorization":"Bearer ${AppHive.getToken()}" ,
          "accept": "*/*"
        },
      ),
    );
  }
  Future<dynamic> get({
    required String endpoint,
  }) async {
    dio.options.headers.addAll({
      "Authorization": "Bearer ${AppHive.getToken()}",
    });
    var response = await dio.get(endpoint);
    return response.data;
  }

  Future<dynamic> post(
      {required String endpoint,
      Map<String, dynamic>? data,
      Map<String, dynamic>? formData}) async {
    dio.options.headers.addAll({
      "Authorization": "Bearer ${AppHive.getToken()}",
    });
    var response = await dio.post(
      endpoint,
      queryParameters: data,
      data: formData,
    );
    return response.data;
  }

  Future<dynamic> postFormData(
      {required String endpoint, required dynamic data}) async {
    FormData formData = FormData.fromMap(data);
    // data.addAll(m);
    AppLogger.print(dio.options.headers.toString());
    dio.options.headers.addAll({
      "Content-Type": "multipart/form-data",
      // "Authorization": "Bearer ${AppHive.getToken()}"
    });
    AppLogger.print("xxxx${dio.options.baseUrl}");

    var response = await dio.post(
      endpoint,
      data: formData,
    );

    return response.data;
  }
}
