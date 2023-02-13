import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumDizMillion extends StatefulWidget
{
  DialogPavnumDizMillion({super.key,required this.dizMillion,required this.translate});
  DialogPavnumDizMillionState createState() => DialogPavnumDizMillionState();
  int dizMillion;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumDizMillionState extends State<DialogPavnumDizMillion>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.dizMillion) {
      case 10000000 : {
        setState(() {
          textMg = "Folo tapitrisa";
          textFr = "Dix-million";
        });
      } break;
      case 20000000 : {
        setState(() {
          textMg = "Roa-polo tapitrisa";
          textFr = "Vingt-millions";
        });
      } break;
      case 30000000 : {
        setState(() {
          textMg = "Telo-polo tapitrisa";
          textFr = "Trente-millions";
        });
      } break;
      case 40000000 : {
        setState(() {
          textMg = "Efa-polo tapitrisa";
          textFr = "Quarante-millions";
        });
      } break;
      case 50000000 : {
        setState(() {
          textMg = "Dimam-polo tapitrisa";
          textFr = "Cinquante-millions";
        });
      } break;
      case 60000000 : {
        setState(() {
          textMg = "Enim-polo tapitrisa";
          textFr = "Soixante-millions";
        });
      } break;
      case 70000000 : {
        setState(() {
          textMg = "Fito-polo tapitrisa";
          textFr = "Soixante-dix-millions";
        });
      } break;
      case 80000000 : {
        setState(() {
          textMg = "Valo-polo tapitrisa";
          textFr = "Quatre-vingts-millions";
        });
      } break;
      case 90000000 : {
        setState(() {
          textMg = "Sivifolo tapitrisa";
          textFr = "Quatre-vingts-dix-millions";
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
                    NumberFormatter.formatter(widget.dizMillion).toString(),
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
                      title: "1\nFolo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 10000000;
                          textMg = "Folo tapitrisa";
                          textFr = "Dix-million";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa-polo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 20000000;
                          textMg = "Roa-polo tapitrisa";
                          textFr = "Vingt-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelo-polo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 30000000;
                          textMg = "Telo-polo tapitrisa";
                          textFr = "Trente-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfa-polo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 40000000;
                          textMg = "Efa-polo tapitrisa";
                          textFr = "Quarante-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimam-polo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 50000000;
                          textMg = "Dimam-polo tapitrisa";
                          textFr = "Cinquante-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEnim-polo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 60000000;
                          textMg = "Enim-polo tapitrisa";
                          textFr = "Soixante-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFito-polo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 70000000;
                          textMg = "Fito-polo tapitrisa";
                          textFr = "Soixante-dix-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValo-polo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 80000000;
                          textMg = "Valo-polo tapitrisa";
                          textFr = "Quatre-vingts-millions";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivifolo\ntapitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMillion = 90000000;
                          textMg = "Sivifolo tapitrisa";
                          textFr = "Quatre-vingts-dix-millions";
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
                          widget.dizMillion = 0;
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
              widget.translate(type: "xxxxxxxx",number: widget.dizMillion) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}