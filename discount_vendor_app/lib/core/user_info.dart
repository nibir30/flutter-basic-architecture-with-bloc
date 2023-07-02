import 'package:flutter/cupertino.dart';
import '../features/authentication/domain/entities/login_response_entity.dart';
import 'app_config.dart';
import 'package:rxdart/rxdart.dart';

import '../api_gateway/base_model/resource.dart';
import 'data_manager.dart';

class UserInfo {
  bool isCountryState = false;
  bool autoLogin = false;
  bool registerLogin = false;
  bool isLimitedAccess = false;
  bool isGuardianLogin = false;
  bool isSelfieRejectedDialogShown = false;
  bool isSelfieAcceptedDialogShown = false;
  String? loginTime;
  String? logoutTime;
  int appStatus = -1;
  String refreshToken = "";
  String authToken = "";
  String name = "";
  String id = "";
  String profileImgUrl = "";
  String faceFeatures = "";
  int tokenValidity = 0;
  String username = "";
  bool isProfileInfoChanged = false;
  BuildContext? context;
  String userBirthDay = "";
  static final _info = UserInfo._internal();
  UserInfo._internal();
  factory UserInfo() {
    return _info;
  }

  BehaviorSubject<Resource>? _notificationSubject;
  bool isMessage = false;
  BehaviorSubject<Resource> getNotificationBehavior() {
    if (_notificationSubject != null) {
      return _notificationSubject!;
    }
    _notificationSubject = BehaviorSubject();
    return _notificationSubject!;
  }

  Future<void> setUserData(final LoginResponseEntity _response) async {
    userInfo.authToken = _response.authorisation!.token ?? "";
    // final String refreshToken = _response.refreshToken ?? "";
    userInfo.refreshToken = refreshToken;
    // userInfo.username = _response.loginUser!.username;
    userInfo.id = _response.id.toString();
    userInfo.name = _response.name.toString();
    userInfo.refreshToken = refreshToken;
    await dataManager.saveID(userInfo.id);
    await dataManager.saveToken(userInfo.authToken);
    // await dataManager.saveRefreshToken(userInfo.refreshToken);
    // await dataManager.saveUsername(userInfo.username);
    await dataManager.saveName(userInfo.name);
    await dataManager.saveProfileUrl(userInfo.profileImgUrl);
    await dataManager.saveDOB(userInfo.userBirthDay);
    if (refreshToken.isNotEmpty) {
      await dataManager.saveRefreshToken(refreshToken);
    }
  }

  bool get isLoggedIn => authToken.isNotEmpty && username.isNotEmpty;

  void clearLogin() {
    dataManager.saveToken("");
    dataManager.saveRefreshToken("");
    dataManager.saveLimitedAccessStatus(false);
    isLimitedAccess = false;
    isGuardianLogin = false;
    autoLogin = false;
    authToken = "";
    username = "";
    _notificationSubject?.close();
    _notificationSubject = null;
  }

  Map<String, String> getAuthData() {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      if (userInfo.authToken.isNotEmpty) "AuthenticationToken": userInfo.authToken,
      if (userInfo.authToken.isNotEmpty) "Authorization": "Bearer ${userInfo.authToken}",
      "timeDifference": "${appConfig.timeZoneOffset}",
      "x-api-version": "1.1"
    };
  }
}

final UserInfo userInfo = UserInfo();
