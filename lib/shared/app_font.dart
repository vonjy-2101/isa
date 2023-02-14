import 'package:flutter/cupertino.dart';
import 'package:isa2/shared/theme.dart';
import 'package:sizer/sizer.dart';

class APPFont{

    static setText({
        required String text,
        FontWeight? fontWeight,
        double? fontSize,
        Color? color,
        TextAlign? textAlign
    }){
        return Text(
            text,
            style: TextStyle(
              fontFamily: 'MyriadRoman',
              fontSize: (fontSize != null) ? fontSize : 11.sp,
              color: (color != null) ? color : APPTHEMING.grey,
              fontWeight: (fontWeight != null) ? fontWeight : FontWeight.normal,
              height: 0.13.h
            ),
            textAlign: (textAlign != null) ? textAlign : TextAlign.left,
        );
    }

}