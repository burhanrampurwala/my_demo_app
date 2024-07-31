
import 'dart:convert';

import '../../common/resources/urls.dart';
import '../../services/http_services/http_service_header.dart';
import '../../services/http_services/http_services.dart';
import '../models/api_request_model/sign_in_request_model.dart';

class AuthenticationDataService {

  static Future signIn({required SignInRequestModel signInRequestModel}) async {
    String baseUrl = '${UrlPrefixes.baseUrl}${UrlSuffixes.login_api}';

    var data = json.encode({
      "email": signInRequestModel.email,
      "password": signInRequestModel.password,
    });

    final response = await HttpServices.postMethod(baseUrl,
        data: data, header: await setHeader(true));

    return response;
  }

}