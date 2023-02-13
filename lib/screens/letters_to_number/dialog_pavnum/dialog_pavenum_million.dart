import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumMillion extends StatefulWidget
{
  DialogPavnumMillion({super.key,required this.million,required this.translate});
  DialogPavnumMillionState createState() => DialogPavnumMillionState();
  int million;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumMillionState extends State<DialogPavnumMillion>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.million) {
      case 1000000 : {
        setState(() {
          textMg = "Iray tapitrisa";
          textFr = "Un-million";
        });
      } break;
      case 2000000 : {
        setState(() {
          textMg = "Roa tapitrisa";
          textFr = "Deux-millions";
        });
      } break;
      case 3000000 : {
        setState(() {
          textMg = "Telo tapitrisa";
          textFr = "Trois-millions";
        });
      } break;
      case 4000000 : {
        setState(() {
          textMg = "Efatra tapitrisa";
          textFr = "Quatre-millions";
        });
      } break;
      case 5000000 : {
        setState(() {
          textMg = "Dimy tapitrisa";
          textFr = "Cinq-millions";
        });
      } break;
      case 6000000 : {
        setState(() {
          textMg = "Enina tapitrisa";
          textFr = "Six-millions";
        });
      } break;
      case 7000000 : {
        setState(() {
          textMg = "Fito tapitrisa";
          textFr = "Sept-millions";
        });
      } break;
      case 8000000 : {
        setState(() {
          textMg = "Valo tapitrisa";
          textFr = "Huit-millions";
        });
      } break;
      case 9000000 : {
        setState(() {
          textMg = "Sivy tapitrisa";
          textFr = "Neuf-millions";
        });
      } break;
      default : {
        setState(() {
          textMg = "Aotra";
          textFr = "Zéro";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 12.h,
              padding: EdgeInsets.all(2.w),
              margin: EdgeInsets.only(bottom: 2.h),
              decoration: BoxDecoration(
                  color: APPTHEMING.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: APPTHEMING.grey,
                        blurRadius: 1,
                        spreadRadius: 0
                    )
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    NumberFormatter.formatter(widget.million).toString(),
                    style : TextStyle(fontFamily: 'MyriadRoman',fontSize: 12.sp,color: APPTHEMING.blue,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(height: 1.h,),
                  Text(
                    textMg,
                    style : TextStyle(fontFamily: 'MyriadRoman',fontSize: 14.sp,color: APPTHEMING.grey,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(height: 1.h,),
                  Text(
                    textFr,
                    style : TextStyle(fontFamily: 'MyriadRoman',fontSize: 14.sp,color: APPTHEMING.grey,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40.h,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: ((MediaQuery.of(context).size.width/3)/12.h),
                children: [
                  AppButton.BUTTONLARGE(
                      title: "1\nIray\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 1000000;
                          textMg = "Iray tapitrisa";
                          textFr = "Un-million";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 2000000;
                          textMg = "Roa tapitrisa";
                          textFr = "Deux-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 3000000;
                          textMg = "Telo tapitrisa";
                          textFr = "Trois-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfatra\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 4000000;
                          textMg = "Efatra tapitrisa";
                          textFr = "Quatre-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimy\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 5000000;
                          textMg = "Dimy tapitrisa";
                          textFr = "Cinq-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEnina\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 6000000;
                          textMg = "Enina tapitrisa";
                          textFr = "Six-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFito\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 7000000;
                          textMg = "Fito tapitrisa";
                          textFr = "Sept-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 8000000;
                          textMg = "Valo tapitrisa";
                          textFr = "Huit-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivy\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 9000000;
                          textMg = "Sivy tapitrisa";
                          textFr = "Neuf-millions";
                        });
                      }
                  ),
                  SizedBox(),
                  AppButton.BUTTONLARGE(
                      title: "0\nAotra",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.million = 0;
                          textMg = "Aotra";
                          textFr = "Zéro";
                        });
                      }
                  ),
                  SizedBox(),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            AppButton.BUTTONLARGE(title: "Ok", onPressed: (){
              widget.translate(type: "xxxxxxx",number: widget.million) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}