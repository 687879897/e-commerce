import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/features/auth/data/data_source/auth_data_source.dart';
import 'package:asroo_store/features/auth/data/models/login_request_body.dart';
import 'package:asroo_store/features/auth/data/models/login_response.dart';

import 'package:asroo_store/features/auth/data/models/user_role_response.dart';

import '../../../../core/serviec/graphql/api_result.dart';
import '../models/sign_up_request_body.dart';
import '../models/sign_up_response.dart';

class AuthRepos {
  const AuthRepos(this._dataSource);
  final AuthDataSource _dataSource;

  //Loign
  Future<ApiResult<LoginResponse>> login(LoginRequestBody body) async {
    try {
      final response = await _dataSource.login(body: body);

      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(LangKeys.loggedError);
    }
  }

  //Get User Role
  Future<UserRoleResponse> userRole(String token) async {
    final response = await _dataSource.userRole(token);
    return response;
  }
  Future<ApiResult<SignUpResponse>> signUp(SignUpRequestBody body) async {
    try {
      final response = await _dataSource.signUp(body: body);

      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure('Please, try agian we have error');
    }
  }

}
