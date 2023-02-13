import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumCentMille extends StatefulWidget
{
  DialogPavnumCentMille({super.key,required this.centMillier,required this.translate});
  DialogPavnumCentMilleState createState() => DialogPavnumCentMilleState();
  int centMillier;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumCentMilleState extends State<DialogPavnumCentMille>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.centMillier) {
      case 100000 : {
        setState(() {
          textMg = "Iray hetsy";
          textFr = "Cent-mille";
        });
      } break;
      case 200000 : {
        setState(() {
          textMg = "Roa hetsy";
          textFr = "Deux-cents-mille";
        });
      } break;
      case 300000 : {
        setState(() {
          textMg = "Telo hetsy";
          textFr = "Trois-cents-mille";
        });
      } break;
      case 400000 : {
        setState(() {
          textMg = "Efatra hetsy";
          textFr = "Quatre-cents-mille";
        });
      } break;
      case 500000 : {
        setState(() {
          textMg = "Dimy hetsy";
          textFr = "Cinq-cents-mille";
        });
      } break;
      case 600000 : {
        setState(() {
          textMg = "Enina hetsy";
          textFr = "Six-cents-mille";
        });
      } break;
      case 700000 : {
        setState(() {
          textMg = "Fito hetsy";
          textFr = "Sept-cents-mille";
        });
      } break;
      case 800000 : {
        setState(() {
          textMg = "Valo hetsy";
          textFr = "Huit-cents-mille";
        });
      } break;
      case 900000 : {
        setState(() {
          textMg = "Sivy hetsy";
          textFr = "Neuf-cents-mille";
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
                    NumberFormatter.formatter(widget.centMillier).toString(),
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
                      title: "1\nIray hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 100000;
                          textMg = "Iray hetsy";
                          textFr = "Cent-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 200000;
                          textMg = "Roa hetsy";
                          textFr = "Deux-cents-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelo hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 300000;
                          textMg = "Telo hetsy";
                          textFr = "Trois-cents-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfatra hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 400000;
                          textMg = "Efatra hetsy";
                          textFr = "Quatre-cents-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimy hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 500000;
                          textMg = "Dimy hetsy";
                          textFr = "Cinq-cents-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEnina hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 600000;
                          textMg = "Enina hetsy";
                          textFr = "Six-cents-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFito hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 700000;
                          textMg = "Fito hetsy";
                          textFr = "Sept-cents-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValo hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 800000;
                          textMg = "Valo hetsy";
                          textFr = "Huit-cents-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivy hetsy",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillier = 900000;
                          textMg = "Sivy hetsy";
                          textFr = "Neuf-cents-mille";
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
                          widget.centMillier = 0;
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
              widget.translate(type: "xxxxxx",number: widget.centMillier) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}