import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';

class ApiService {
  ApiService._() {
    dio = Dio(BaseOptions(baseUrl: 'https://petstore.swagger.io/v2'));
    petApi = PetApi(dio, serializers);
  }

  late PetApi petApi;
  late Dio dio;

  static final instance = ApiService._();
}
