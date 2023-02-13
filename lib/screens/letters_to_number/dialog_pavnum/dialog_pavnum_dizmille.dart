import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumDizMille extends StatefulWidget
{
  DialogPavnumDizMille({super.key,required this.dizMillier,required this.translate});
  DialogPavnumDizMilleState createState() => DialogPavnumDizMilleState();
  int dizMillier;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumDizMilleState extends State<DialogPavnumDizMille>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.dizMillier) {
      case 10000 : {
        setState(() {
          textMg = "Iray alina";
          textFr = "Dix-mille";
        });
      } break;
      case 20000 : {
        setState(() {
          textMg = "Roa alina";
          textFr = "Vingt-mille";
        });
      } break;
      case 30000 : {
        setState(() {
          textMg = "Telo alina";
          textFr = "Trente-mille";
        });
      } break;
      case 40000 : {
        setState(() {
          textMg = "Efatra alina";
          textFr = "Quarante-mille";
        });
      } break;
      case 50000 : {
        setState(() {
          textMg = "Dimy alina";
          textFr = "Cinquante-mille";
        });
      } break;
      case 60000 : {
        setState(() {
          textMg = "Enina alina";
          textFr = "Soixante-mille";
        });
      } break;
      case 70000 : {
        setState(() {
          textMg = "Fito alina";
          textFr = "Soixante-dix-mille";
        });
      } break;
      case 80000 : {
        setState(() {
          textMg = "Valo alina";
          textFr = "Quartre-vingts-mille";
        });
      } break;
      case 90000 : {
        setState(() {
          textMg = "Sivy alina";
          textFr = "Quartre-vingts-dix-mille";
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
                    NumberFormatter.formatter(widget.dizMillier).toString(),
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
                      title: "1\nIray alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 10000;
                          textMg = "Iray alina";
                          textFr = "Dix-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 20000;
                          textMg = "Roa alina";
                          textFr = "Vingt-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelo alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 30000;
                          textMg = "Telo alina";
                          textFr = "Trente-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfatra alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 40000;
                          textMg = "Efatra alina";
                          textFr = "Quarante-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimy alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 50000;
                          textMg = "Dimy alina";
                          textFr = "Cinquante-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEnina alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 60000;
                          textMg = "Enina alina";
                          textFr = "Soixante-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFito alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 70000;
                          textMg = "Fito alina";
                          textFr = "Soixante-dix-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValo alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 80000;
                          textMg = "Valo alina";
                          textFr = "Quartre-vingts-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivy alina",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillier = 90000;
                          textMg = "Sivy alina";
                          textFr = "Quartre-vingts-dix-mille";
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
                          widget.dizMillier = 0;
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
              widget.translate(type: "xxxxx",number: widget.dizMillier) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}