import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumDizMilliard extends StatefulWidget
{
  DialogPavnumDizMilliard({super.key,required this.dizMilliard,required this.translate});
  DialogPavnumDizMilliardState createState() => DialogPavnumDizMilliardState();
  int dizMilliard;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumDizMilliardState extends State<DialogPavnumDizMilliard>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.dizMilliard) {
      case 10000000000 : {
        setState(() {
          textMg = "Folo lavitrisa";
          textFr = "Dix-milliards";
        });
      } break;
      case 20000000000 : {
        setState(() {
          textMg = "Roa-polo lavitrisa";
          textFr = "Vingt-milliards";
        });
      } break;
      case 30000000000 : {
        setState(() {
          textMg = "Telo-polo lavitrisa";
          textFr = "Trente-milliards";
        });
      } break;
      case 40000000000 : {
        setState(() {
          textMg = "Efa-polo lavitrisa";
          textFr = "Quarante-milliards";
        });
      } break;
      case 50000000000 : {
        setState(() {
          textMg = "Dimam-polo lavitrisa";
          textFr = "Cinquante-milliards";
        });
      } break;
      case 60000000000 : {
        setState(() {
          textMg = "Enim-polo lavitrisa";
          textFr = "Soixante-milliards";
        });
      } break;
      case 70000000000 : {
        setState(() {
          textMg = "Fito-polo lavitrisa";
          textFr = "Soixante-dix-milliards";
        });
      } break;
      case 80000000000 : {
        setState(() {
          textMg = "Valo-polo lavitrisa";
          textFr = "Quatre-vingts-milliards";
        });
      } break;
      case 90000000000 : {
        setState(() {
          textMg = "Sivifolo lavitrisa";
          textFr = "Quatre-vingts-dix-milliards";
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
                    NumberFormatter.formatter(widget.dizMilliard).toString(),
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
                      title: "1\nFolo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 10000000000;
                          textMg = "Folo lavitrisa";
                          textFr = "Dix-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa-polo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 20000000000;
                          textMg = "Roa-polo lavitrisa";
                          textFr = "Vingt-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelo-polo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 30000000000;
                          textMg = "Telo-polo lavitrisa";
                          textFr = "Trente-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfa-polo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 40000000000;
                          textMg = "Efa-polo lavitrisa";
                          textFr = "Quarante-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimam-polo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 50000000000;
                          textMg = "Dimam-polo lavitrisa";
                          textFr = "Cinquante-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEnim-polo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 60000000000;
                          textMg = "Enim-polo lavitrisa";
                          textFr = "Soixante-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFito-polo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 70000000000;
                          textMg = "Fito-polo lavitrisa";
                          textFr = "Soixante-dix-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValo-polo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 80000000000;
                          textMg = "Valo-polo lavitrisa";
                          textFr = "Quatre-vingts-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivifolo\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.dizMilliard = 90000000000;
                          textMg = "Sivifolo lavitrisa";
                          textFr = "Quatre-vingts-dix-milliards";
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
                          widget.dizMilliard = 0;
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
              widget.translate(type: "xxxxxxxxxxx",number: widget.dizMilliard) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}