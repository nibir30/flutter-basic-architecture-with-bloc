


import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../router/routing_variables.dart';

class DeviceInfo {

  static String get iosChannel => "IOS";
  static String get androidChannel => "ANDROID";
  static int get chtIOS => 4;
  static int get chtAndroid => 3;
  static int get chtWEB => 2;
  String? _appVersion;
  String? _versionCode;
  String? _deviceID;
  String? _appID;
  String? _deviceModel;
  String? _channel;
  String? _osVersion;
  String? _sdkVersion;
  String? _deviceName;


  String? get appVersion => _appVersion;
  String? get versionCode => _versionCode;
  String? get deviceID => _deviceID;
  
  String? get appID => _appID ?? "medibee.com";
  String? get deviceModel => _deviceModel;
  String? get channel => _channel;

  String? get osVersion => _osVersion;
  String? get sdkVersion => _sdkVersion;
  String? get deviceName => _deviceName;

  static final _device = DeviceInfo._internal();
  DeviceInfo._internal();
  factory DeviceInfo() {
    return _device;
  }

  Future<String?> getAppVersion() async {

    if (_appVersion == null) {
      final infoPlatform = MethodChannel(NativeMethods.infoChannel);
      final _data = await infoPlatform
          .invokeMethod(NativeMethods.methodDeviceInfo)
          .onError(_device._onError);
      if (_data != null) {
        this._onRead(_data);
      }
    }
    return _appVersion;
  }

  void _onRead(final deviceInfo) {
    final _dataMap = Map<String, String>.from(deviceInfo);
    this._deviceID = _dataMap["device_id"];
    this._versionCode = _dataMap["version_code"];
    this._deviceModel = _dataMap["device_model"];
    this._appVersion = _dataMap["app_version"];
    this._osVersion = _dataMap["device_os"];
    this._sdkVersion = _dataMap["device_sdk_version"];
    this._deviceName = _dataMap["device_name"];
    this._appID = _dataMap["app_id"];
    if (Platform.isIOS) {
      this._channel = iosChannel;
    } else {
      this._channel =  androidChannel;
    }
  }

  void _onError(error, stackTrace) {
    this._deviceID = "unknown";
    this._versionCode = "unknown";
    this._deviceModel = "unknown";
    this._appVersion = "unknown";
    this._osVersion = "unknown";
    this._deviceName = "unknown";
    this._sdkVersion = "unknown";
    debugPrint("error $error tracing $stackTrace");
    this._channel = Platform.isIOS ? iosChannel : androidChannel;
  }
}

final DeviceInfo deviceInfo = DeviceInfo();