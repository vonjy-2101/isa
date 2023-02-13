import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumMilliard extends StatefulWidget
{
  DialogPavnumMilliard({super.key,required this.milliard,required this.translate});
  DialogPavnumMilliardState createState() => DialogPavnumMilliardState();
  int milliard;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumMilliardState extends State<DialogPavnumMilliard>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.milliard) {
      case 1000000000 : {
        setState(() {
          textMg = "Iray lavitrisa";
          textFr = "Un-milliard";
        });
      } break;
      case 2000000000 : {
        setState(() {
          textMg = "Roa lavitrisa";
          textFr = "Deux-milliards";
        });
      } break;
      case 3000000000 : {
        setState(() {
          textMg = "Telo lavitrisa";
          textFr = "Trois-milliards";
        });
      } break;
      case 4000000000 : {
        setState(() {
          textMg = "Efatra lavitrisa";
          textFr = "Quatre-milliards";
        });
      } break;
      case 5000000000 : {
        setState(() {
          textMg = "Dimy lavitrisa";
          textFr = "Cinq-milliards";
        });
      } break;
      case 6000000000 : {
        setState(() {
          textMg = "Enina lavitrisa";
          textFr = "Six-milliards";
        });
      } break;
      case 7000000000 : {
        setState(() {
          textMg = "Fito lavitrisa";
          textFr = "Sept-milliards";
        });
      } break;
      case 8000000000 : {
        setState(() {
          textMg = "Valo lavitrisa";
          textFr = "Huit-milliards";
        });
      } break;
      case 9000000000 : {
        setState(() {
          textMg = "Sivy lavitrisa";
          textFr = "Neuf-milliards";
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
                    NumberFormatter.formatter(widget.milliard).toString(),
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
                      title: "1\nIray\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 1000000000;
                          textMg = "Iray lavitrisa";
                          textFr = "Un-milliard";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 2000000000;
                          textMg = "Roa lavitrisa";
                          textFr = "Deux-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 3000000000;
                          textMg = "Telo lavitrisa";
                          textFr = "Trois-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfatra\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 4000000000;
                          textMg = "Efatra lavitrisa";
                          textFr = "Quatre-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimy\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 5000000000;
                          textMg = "Dimy lavitrisa";
                          textFr = "Cinq-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEnina\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 6000000000;
                          textMg = "Enina lavitrisa";
                          textFr = "Six-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFito\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 7000000000;
                          textMg = "Fito lavitrisa";
                          textFr = "Sept-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 8000000000;
                          textMg = "Valo lavitrisa";
                          textFr = "Huit-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivy\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.milliard = 9000000000;
                          textMg = "Sivy lavitrisa";
                          textFr = "Neuf-milliards";
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
                          widget.milliard = 0;
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
              widget.translate(type: "xxxxxxxxxx",number: widget.milliard) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}