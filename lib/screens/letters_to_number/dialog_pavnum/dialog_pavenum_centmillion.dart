import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumCentMillion extends StatefulWidget
{
  DialogPavnumCentMillion({super.key,required this.centMillion, required this.translate});
  DialogPavnumCentMillionState createState() => DialogPavnumCentMillionState();
  int centMillion;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumCentMillionState extends State<DialogPavnumCentMillion>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.centMillion) {
      case 100000000 : {
        setState(() {
          textMg = "Zato tapitrisa";
          textFr = "Cent-millions";
        });
      } break;
      case 200000000 : {
        setState(() {
          textMg = "Roanjato tapitrisa";
          textFr = "Deux-cents-millions";
        });
      } break;
      case 300000000 : {
        setState(() {
          textMg = "Telonjato tapitrisa";
          textFr = "Trois-cents-millions";
        });
      } break;
      case 400000000 : {
        setState(() {
          textMg = "Efa-jato tapitrisa";
          textFr = "Quatre-cents-millions";
        });
      } break;
      case 500000000 : {
        setState(() {
          textMg = "Dimanjato tapitrisa";
          textFr = "Cinq-cents-millions";
        });
      } break;
      case 600000000 : {
        setState(() {
          textMg = "Eninjato tapitrisa";
          textFr = "Six-cents-millions";
        });
      } break;
      case 700000000 : {
        setState(() {
          textMg = "Fitonjato tapitrisa";
          textFr = "Sept-cents-millions";
        });
      } break;
      case 800000000 : {
        setState(() {
          textMg = "Valonjato tapitrisa";
          textFr = "Huit-cents-millions";
        });
      } break;
      case 900000000 : {
        setState(() {
          textMg = "Sivinjato tapitrisa";
          textFr = "Neuf-cents-millions";
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
                    NumberFormatter.formatter(widget.centMillion).toString(),
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
                      title: "1\nZato\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 100000000;
                          textMg = "Zato tapitrisa";
                          textFr = "Cent-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 200000000;
                          textMg = "Roanjato tapitrisa";
                          textFr = "Deux-cents-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelonjato\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 300000000;
                          textMg = "Telonjato tapitrisa";
                          textFr = "Trois-cents-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfa-jato\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 400000000;
                          textMg = "Efa-jato tapitrisa";
                          textFr = "Quatre-cents-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimanjato\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 500000000;
                          textMg = "Dimanjato tapitrisa";
                          textFr = "Cinq-cents-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEninjato\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 600000000;
                          textMg = "Eninjato tapitrisa";
                          textFr = "Six-cents-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFitonjato\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 700000000;
                          textMg = "Fitonjato tapitrisa";
                          textFr = "Sept-cents-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValonjato\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 800000000;
                          textMg = "Valonjato tapitrisa";
                          textFr = "Huit-cents-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivinjato\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMillion = 900000000;
                          textMg = "Sivinjato tapitrisa";
                          textFr = "Neuf-cents-millions";
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
                          widget.centMillion = 0;
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
              widget.translate(type: "xxxxxxxxx",number: widget.centMillion) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}