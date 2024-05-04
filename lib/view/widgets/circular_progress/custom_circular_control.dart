import 'package:flutter/material.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';
import 'package:lock_vault/view/widgets/circular_progress/circular_control_painter.dart';
import 'dart:math';

class CustomCircularControl extends StatefulWidget {
  final double value;
  final ValueChanged<double>? onChanged;

  const CustomCircularControl({
    super.key,
    required this.value,
    this.onChanged,
  });

  @override
  _CustomCircularControlState createState() => _CustomCircularControlState();
}

class _CustomCircularControlState extends State<CustomCircularControl> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {},
      child: CustomPaint(
        painter: CircularControlPainter(value: _value),
        size: displaySize(context),
        child: Container(
          height: displayHeight(context) * 0.25,
          width: displayHeight(context) * 0.25,
          decoration: BoxDecoration(
              shape: BoxShape.circle, gradient: AppColor.primaryGradient),
          child: Center(
            // Add your content here
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Health Score",
                  style: mediumTextStyle(
                      displayFontSize(context) * 6, AppColor.white),
                ),
                Text(
                  "${(_value * 100).toInt()}%",
                  style:
                      titleText(displayFontSize(context) * 22, AppColor.white),
                ),
              ],
            ),
          ),
        ).padAll(32),
      ),
    );
  }

  void _updateValue(Offset position) {
    double newValue = position.direction / (2 * pi) % 1;
    if (widget.onChanged != null) {
      widget.onChanged!(newValue);
    }
    setState(() {
      _value = newValue;
    });
  }
}
