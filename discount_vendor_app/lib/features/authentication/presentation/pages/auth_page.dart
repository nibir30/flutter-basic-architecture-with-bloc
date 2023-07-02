import 'package:discount_vendor_app/features/authentication/domain/entities/login_request_entity.dart';
import 'package:discount_vendor_app/features/authentication/presentation/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/app_constant.dart';
import '../../../../router/routing_variables.dart';
import '../../../../shared/Helpers/image_helper.dart';
import '../../../../shared/widgets/submit_widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  bool agreeToTerms = false;

  LoginBloc loginBloc = LoginBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            // height: size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      //   child: ImageHelper.getSvg(
                      //     "signIn_poster",
                      //     width: size.width,
                      //     height: size.width,
                      //   ),
                      // ),
                      // SizedBox(height: 12),
                      Text(
                        "Sign In",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "EMAIL ADDRESS",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                          color: AppConstant.neutral10,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextField(
                          // keyboardType: TextInputType.phone,
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: AppConstant.textFieldBorderColor, fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                          color: AppConstant.neutral10,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: TextField(
                            obscureText: isObscure,
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: "PASSWORD",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: AppConstant.textFieldBorderColor, fontSize: 14),
                              suffix: SizedBox(
                                width: 48,
                                height: 50,
                                child: InkWell(
                                  onTap: () {
                                    setState(
                                      () {
                                        isObscure = !isObscure;
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.remove_red_eye,
                                    color: AppConstant.neutral40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 12),
                    Checkbox(
                      activeColor: AppConstant.primaryColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      value: agreeToTerms,
                      onChanged: (value) {
                        setState(() {
                          agreeToTerms = value!;
                        });
                      },
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(fontSize: 12, color: AppConstant.neutral60),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        //
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 12, color: AppConstant.primaryColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(width: 24),
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    LoginRequestEntity loginReqEnt = LoginRequestEntity(
                      emailController.text,
                      passwordController.text,
                      "vendor",
                    );

                    loginBloc.add(RequestLoginEvent(loginReqEnt));
                  },
                  child: SubmitWidget(size: size, isMargin: true, text: "Sign In"),
                ),
                BlocListener(
                  bloc: loginBloc,
                  listener: (BuildContext context, state) {
                    if (state is LoginSuccessState) {
                      print(state.authEntity.authorisation!.token.toString());
                    }
                  },
                  child: Container(),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account? ",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Navigation.regPage);
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppConstant.primaryColor),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
