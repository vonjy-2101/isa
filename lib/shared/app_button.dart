import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isa2/shared/theme.dart';
import 'package:sizer/sizer.dart';


class AppButton{

  static Widget BUTTONLARGE({
    required String title,
    required onPressed,
    Color? color,
    Color? borderColor,
    Icon? icon,
    Color? textColor,
    double? borderRadius,
    TextAlign? textAlign
  })
  {
    return SizedBox(
      width: 80.w,
      height: 6.h,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: APPTHEMING.grey),
              borderRadius: (borderRadius != null) ? BorderRadius.all(Radius.circular(borderRadius)) :  const BorderRadius.all(Radius.circular(40)),
              color: (color != null) ? color : APPTHEMING.yellow
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (icon != null) ? icon : const SizedBox(),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'MyriadRoman',
                  fontSize: 12.sp,
                  color:  Colors.black.withOpacity(0.4),
                  fontWeight:  FontWeight.w900,
                ),
                textAlign: (textAlign != null) ? textAlign : TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }





}