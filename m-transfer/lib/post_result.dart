import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  String service_code;
  String account_number;

  PostResult({required this.service_code, required this.account_number});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        service_code: object['service_code'],
        account_number: object['account_number']);
  }

  static Future<PostResult> connectToAPI(
      String service_code, String account_number) async {
    String apiURL = "https://api.cekmutasi.co.id/v1";

    var apiResult = await http.post(apiURL,
        body: {"service_code": service_code, "account_number": account_number});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
