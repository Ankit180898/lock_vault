import 'package:flutter/material.dart';
import 'package:lock_vault/utils/utils.dart';
import 'package:lottie/lottie.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color bgcolor;
  final Color textColor;
  final double borderRadius;
  final double height;
  final double width;
  final double textSize;
  final bool isCenter;
  Gradient? gradient;

  CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.bgcolor,
    required this.height,
    required this.width,
    required this.textSize,
    required this.textColor,
    this.isCenter = true,
    this.borderRadius = 8.0,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onPressed,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: bgcolor,
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: gradient),
          child: isCenter == true
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        text,
                        style: mediumTextStyle(16, textColor),
                      ),
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            text,
                            style: titleText(16, textColor),
                          ),
                        ),
                        const Spacer(),
                        Lottie.asset("assets/right_arrow.json", height: 24)
                      ],
                    ),
                  ),
                ),
        ),
    
    );
  }
}
