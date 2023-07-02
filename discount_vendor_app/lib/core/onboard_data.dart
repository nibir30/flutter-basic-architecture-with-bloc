


import 'device_info.dart';

class OnBoardData{
  int get channelType => _channelType;
  String? get appVersion => _appVersion;
  String? get appID => _appID;
  String? get deviceID => _deviceID;

  final int _channelType;
  final String? _appVersion;
  final String? _appID;
  final String? _deviceID;
  OnBoardData()
      : this._channelType = _getDeviceType(),
        this._appVersion = deviceInfo.appVersion,
        this._appID = deviceInfo.appID?.toLowerCase(),
        this._deviceID = deviceInfo.deviceID;

  static int _getDeviceType() {
    if(deviceInfo.channel == DeviceInfo.androidChannel) 
      return DeviceInfo.chtAndroid;
    if(deviceInfo.channel == DeviceInfo.iosChannel)
      return DeviceInfo.chtIOS;
    return DeviceInfo.chtWEB;
  }
}