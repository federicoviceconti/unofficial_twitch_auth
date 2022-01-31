import 'dart:convert';

import 'package:unofficial_twitch_http/models/http_result.dart';

class AuthValidateResponse extends BaseHttpResponse {
  final String? clientId;
  final String? login;
  final List<String>? scopes;
  final String? userId;
  final int? expiresIn;

  AuthValidateResponse({
    int? status,
    String? message,
    this.clientId,
    this.login,
    this.scopes,
    this.userId,
    this.expiresIn,
  }) : super(message: message, status: status);

  /// Convert the body of the HTTP response into the [AuthRevokeResponse]
  static AuthValidateResponse fromJson(Map<String, dynamic> json) {
    return AuthValidateResponse(
      status: json['status'],
      message: json['message'],
      clientId: json['client_id'],
      login: json['login'],
      scopes: _convertScopeList(json),
      userId: json['user_id'],
      expiresIn: json['expires_in'],
    );
  }

  /// Convert the HTTP response into the [AuthValidateResponse]
  static AuthValidateResponse fromHttpResponse(String body) {
    return AuthValidateResponse.fromJson(jsonDecode(body));
  }

  /// Convert the scopes into a string list
  static List<String> _convertScopeList(Map<String, dynamic> json) {
    try {
      return json['scopes'].map((it) => it?.toString()).cast<String>().toList();
    } catch (e) {
      return [];
    }
  }
}
