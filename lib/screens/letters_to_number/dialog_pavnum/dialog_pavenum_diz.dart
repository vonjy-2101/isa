import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/theme.dart';

class DialogPavnumDiz extends StatefulWidget
{
  DialogPavnumDiz({super.key,required this.dizaine,required this.translate});
  DialogPavnumDizState createState() => DialogPavnumDizState();
  int dizaine;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumDizState extends State<DialogPavnumDiz>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.dizaine) {
      case 10 : {
        setState(() {
          textMg = "Folo";
          textFr = "Dix";
        });
      } break;
      case 20 : {
        setState(() {
          textMg = "Roa-polo";
          textFr = "Vingt";
        });
      } break;
      case 30 : {
        setState(() {
          textMg = "Telo-polo";
          textFr = "Trente";
        });
      } break;
      case 40 : {
        setState(() {
          textMg = "Efa-polo";
          textFr = "Quarante";
        });
      } break;
      case 50 : {
        setState(() {
          textMg = "Dimam-polo";
          textFr = "Cinquante";
        });
      } break;
      case 60 : {
        setState(() {
          textMg = "Enim-polo";
          textFr = "Soixante";
        });
      } break;
      case 70 : {
        setState(() {
          textMg = "Fito-polo";
          textFr = "Soixante-dix";
        });
      } break;
      case 80 : {
        setState(() {
          textMg = "Valo-polo";
          textFr = "Quatre-vingts";
        });
      } break;
      case 90 : {
        setState(() {
          textMg = "Sivifolo";
          textFr = "Quatre-vingts-dix";
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
                    widget.dizaine.toString(),
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
              height: 30.h,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: ((MediaQuery.of(context).size.width/3)/10.h),
                children: [
                  AppButton.BUTTONLARGE(
                      title: "10\nFolo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 10;
                          textMg = "Folo";
                          textFr = "Dix";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "20\nRoa-polo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 20;
                          textMg = "Roa-polo";
                          textFr = "Vingt";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "30\nTelo-polo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 30;
                          textMg = "Telo-polo";
                          textFr = "Trente";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "40\nEfa-polo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 40;
                          textMg = "Efa-polo";
                          textFr = "Quarante";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "50\nDimam-polo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 50;
                          textMg = "Dimam-polo";
                          textFr = "Cinquante";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "60\nEnim-polo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 60;
                          textMg = "Enim-polo";
                          textFr = "Soixante";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "70\nFito-polo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 70;
                          textMg = "Fito-polo";
                          textFr = "Soixante-dix";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "80\nValo-polo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 80;
                          textMg = "Valo-polo";
                          textFr = "Quatre-vingts";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "90\nSivifolo",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizaine = 90;
                          textMg = "Sivifolo";
                          textFr = "Quatre-vingts-dix";
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
                          widget.dizaine = 0;
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
              widget.translate(type: "xx",number: widget.dizaine) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}