import 'package:flutter/material.dart';

import '../../constants/app_constant.dart';

class VerticalDashLineWidget extends StatelessWidget {
  const VerticalDashLineWidget({
    Key? key,
    required this.dashes,
    this.dashColor,
  }) : super(key: key);

  final Color? dashColor;
  final int dashes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        dashes,
        (ii) => Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Container(
            height: 4,
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class HorizontalDashLineWidget extends StatelessWidget {
  const HorizontalDashLineWidget({
    Key? key,
    this.dashColor,
  }) : super(key: key);

  final Color? dashColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        150 ~/ 3,
        (index) => Expanded(
          child: Container(
            color: index % 2 == 0 ? Colors.transparent : dashColor ?? AppConstant.neutral30,
            height: 1,
          ),
        ),
      ),
    );
  }
}
