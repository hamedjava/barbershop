import 'dart:io';

import 'package:retrofit/http.dart';
import 'package:test/core/constant/constants.dart';
import 'package:dio/dio.dart';
import 'package:test/feature/auth/data/model/user.dart';

//part 'user_api_service.g.dart';

@RestApi(baseUrl: UserApiBaseUrl)
abstract class UserApiService {
  //factory UserApiService(Dio dio) = _UserApiService;
  //Future<HttpResponse<List<UserModel>>> getUserFromApi();
}
