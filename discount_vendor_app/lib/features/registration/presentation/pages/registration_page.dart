import 'package:discount_vendor_app/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/app_constant.dart';
import '../../../../core/utils/toast.dart';
import '../../../../router/routing_variables.dart';
import '../../../../shared/Helpers/image_helper.dart';
import '../../../../shared/widgets/submit_widget.dart';
import '../../domain/entities/registration_request_entity.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController firstnamedController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  String hintText = "";
  String labelText = "";

  RegistrationBloc registrationBloc = RegistrationBloc();

  bool isObscure = true;
  bool agreeToTerms = false;

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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: ImageHelper.getSvg(
                          "signUp_poster",
                          width: size.width,
                          height: size.width / 304 * 167,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(child: CustomTextField(labelText: "First Name", controller: firstnamedController, hintText: "First Name")),
                          SizedBox(width: 8),
                          Expanded(child: CustomTextField(labelText: "Last Name", controller: lastNameController, hintText: "last Name")),
                        ],
                      ),
                      SizedBox(height: 20),
                      CustomTextField(labelText: "EMAIL ADDRESS", controller: emailController, hintText: "Enter your Email"),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                          color: AppConstant.neutral10,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppConstant.neutral50,
                              ),
                            ),
                            TextField(
                              obscureText: isObscure,
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: "Enter your Password",
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: AppConstant.textFieldBorderColor, fontSize: 14),
                                suffix: SizedBox(
                                  width: 48,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isObscure = !isObscure;
                                      });
                                    },
                                    child: Icon(Icons.remove_red_eye, color: isObscure ? AppConstant.neutral40 : AppConstant.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                          color: AppConstant.neutral10,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12),
                            Text(
                              "Confirm Password",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppConstant.neutral50),
                            ),
                            TextField(
                              obscureText: isObscure,
                              controller: confirmPassController,
                              decoration: InputDecoration(
                                hintText: "Enter your Password",
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: AppConstant.textFieldBorderColor, fontSize: 14),
                                suffix: SizedBox(
                                  width: 48,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isObscure = !isObscure;
                                      });
                                    },
                                    child: Icon(Icons.remove_red_eye, color: isObscure ? AppConstant.neutral40 : AppConstant.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: "By signing up, you're agreeing to our ", style: TextStyle(color: AppConstant.neutral50, fontSize: 12)),
                            TextSpan(
                              text: "Terms & Conditions ",
                              style: TextStyle(color: AppConstant.primaryColor, fontSize: 12, fontWeight: FontWeight.w600),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigator.pushNamed(context, Navigation.authPage);
                                },
                            ),
                            TextSpan(text: "and ", style: TextStyle(color: AppConstant.neutral50, fontSize: 12)),
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(color: AppConstant.primaryColor, fontSize: 12, fontWeight: FontWeight.w600),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigator.pushNamed(context, Navigation.authPage);
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    RegistrationRequestEntity registrationReqEnt = RegistrationRequestEntity();
                    registrationReqEnt.name = firstnamedController.text + " " + lastNameController.text;
                    registrationReqEnt.user_type = "vendor";
                    registrationReqEnt.email = emailController.text;
                    registrationReqEnt.password = passwordController.text;
                    if (passwordController.text != confirmPassController.text) {
                      toastMsg("Password doesn't match");
                    } else {
                      registrationBloc.add(RegistrationRequestEvent(registrationReqEnt));
                    }
                  },
                  child: SubmitWidget(size: size, isMargin: true, text: "Sign Up"),
                ),
                BlocListener(
                  bloc: registrationBloc,
                  listener: (BuildContext context, state) {
                    if (state is RegistrationSuccessState) {
                      print(state.registrationResponseEntity.authorisation!.token.toString());
                    }
                  },
                  child: Container(),
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Already have an account? ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black)),
                      TextSpan(
                        text: "Sign In",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppConstant.primaryColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigator.pushNamed(context, Navigation.authPage);
                            Navigator.pushNamedAndRemoveUntil(context, Navigation.authPage, ModalRoute.withName('/'));
                          },
                      ),
                    ],
                  ),
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

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final String labelText;
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: AppConstant.neutral10,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          Text(
            labelText,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppConstant.neutral50),
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: TextStyle(color: AppConstant.textFieldBorderColor, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
