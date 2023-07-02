import 'package:discount_vendor_app/features/authentication/presentation/pages/auth_page.dart';
import 'package:discount_vendor_app/features/registration/presentation/pages/registration_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/data_manager.dart';
import '../../../../core/user_info.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  _StartupPageState createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  late Future future;
  bool? isLoggedIn;

  @override
  void initState() {
    super.initState();
    _configureRoute();
  }

  void _configureRoute() async {
    final _dataManager = DataManager();
    final String _token = await _dataManager.getAuthToken();
    final String _dob = await _dataManager.getDOB();
    final String _userName = await _dataManager.getUsername();
    final String _name = await _dataManager.getName();
    final String _id = await _dataManager.getID();
    final String _profileUrl = await _dataManager.getProfileUrl();

    if (_token.isNotEmpty) {
      setState(() {
        userInfo.authToken = _token;
        userInfo.userBirthDay = _dob;
        userInfo.username = _userName;
        userInfo.name = _name;
        userInfo.id = _id;
        userInfo.autoLogin = true;
        userInfo.profileImgUrl = _profileUrl;
        isLoggedIn = true;
      });
    } else {
      setState(() {
        isLoggedIn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            // isLoggedIn == null ? CircularProgressIndicator() : (isLoggedIn == true ? SignUpPage() : AuthPage()),
            isLoggedIn == null ? CircularProgressIndicator() : (isLoggedIn == true ? SignUpPage() : AuthPage()),
          ],
        ),
      ),
    );
  }
}
