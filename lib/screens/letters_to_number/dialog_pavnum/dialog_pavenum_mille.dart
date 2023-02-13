import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumMille extends StatefulWidget
{
  DialogPavnumMille({super.key,required this.millier,required this.translate});
  DialogPavnumMilleState createState() => DialogPavnumMilleState();
  int millier;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumMilleState extends State<DialogPavnumMille>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.millier) {
      case 1000 : {
        setState(() {
          textMg = "Arivo";
          textFr = "Mille";
        });
      } break;
      case 2000 : {
        setState(() {
          textMg = "Roa arivo";
          textFr = "Deux-mille";
        });
      } break;
      case 3000 : {
        setState(() {
          textMg = "Telo arivo";
          textFr = "Trois-mille";
        });
      } break;
      case 4000 : {
        setState(() {
          textMg = "Efatra arivo";
          textFr = "Quatre-mille";
        });
      } break;
      case 5000 : {
        setState(() {
          textMg = "Dimy arivo";
          textFr = "Cinq-mille";
        });
      } break;
      case 6000 : {
        setState(() {
          textMg = "Enina arivo";
          textFr = "Six-mille";
        });
      } break;
      case 7000 : {
        setState(() {
          textMg = "Fito arivo";
          textFr = "Sept-mille";
        });
      } break;
      case 8000 : {
        setState(() {
          textMg = "Valo arivo";
          textFr = "Huit-mille";
        });
      } break;
      case 9000 : {
        setState(() {
          textMg = "Sivy arivo";
          textFr = "Neuf-mile";
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
                    NumberFormatter.formatter(widget.millier).toString(),
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
                      title: "1\nArivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 1000;
                          textMg = "Arivo";
                          textFr = "Mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa arivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 2000;
                          textMg = "Roa arivo";
                          textFr = "Deux-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelo arivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 3000;
                          textMg = "Telo arivo";
                          textFr = "Trois-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfatra arivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 4000;
                          textMg = "Efatra arivo";
                          textFr = "Quatre-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimy arivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 5000;
                          textMg = "Dimy arivo";
                          textFr = "Cinq-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEnina arivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 6000;
                          textMg = "Enina arivo";
                          textFr = "Six-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFito arivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 7000;
                          textMg = "Fito arivo";
                          textFr = "Sept-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValo arivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 8000;
                          textMg = "Valo arivo";
                          textFr = "Huit-mille";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivy arivo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.millier = 9000;
                          textMg = "Sivy arivo";
                          textFr = "Neuf-mile";
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
                          widget.millier = 0;
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
              widget.translate(type: "xxxx",number: widget.millier) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}