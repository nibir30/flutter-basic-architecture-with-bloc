class ApiNames {
  static String get userLoginAPI => "login";
  static String get register => "register";

  static Map<String, String> get customErrorMsgApiMap => {
        userLoginAPI: "Login system currently not found",
      };
}
