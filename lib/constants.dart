class TwitchAuthenticationConstants {
  /// Base url for the Twitch authentication endpoints
  static const String baseUrl = "https://id.twitch.tv";

  /// Validate endpoint, to check if the token is correct
  static const String validateEndpoint = "/oauth2/validate";

  /// Revoke endpoint, to unvalidate token
  static const String revokeEndpoint = "/oauth2/revoke";

  /// Param added to the header for authenticated requests
  static const String authorizationHeader = 'Authorization';

  /// [token] param for the URL
  static const String tokenParam = 'token';

  /// [clientIdParam] param for the URL
  static const String clientIdParam = 'client_id';
}
