import 'package:flutter/material.dart';

import '../../constants/app_constant.dart';

class SubmitWidget extends StatelessWidget {
  const SubmitWidget({
    Key? key,
    required this.size,
    this.isMargin,
    required this.text,
    this.containColor,
    this.textColor,
  }) : super(key: key);

  final Size size;
  final bool? isMargin;
  final String text;
  final Color? containColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: size.width,
      margin: isMargin != null
          ? isMargin == true
              ? EdgeInsets.symmetric(horizontal: 24)
              : EdgeInsets.symmetric(horizontal: 0)
          : EdgeInsets.symmetric(horizontal: 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: containColor == null ? AppConstant.primaryColor : containColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: textColor == null ? Colors.white : textColor,
        ),
      ),
    );
  }
}
