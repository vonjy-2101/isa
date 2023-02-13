import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumCentMilliard extends StatefulWidget
{
  DialogPavnumCentMilliard({super.key,required this.centMilliard, required this.translate});
  DialogPavnumCentMilliardState createState() => DialogPavnumCentMilliardState();
  int centMilliard;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumCentMilliardState extends State<DialogPavnumCentMilliard>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  String textAn = "Zero";

  void initState() {
    initTranslation();
  }

  initTranslation() {
    switch (widget.centMilliard) {
      case 100000000000 : {
        setState(() {
          textMg = "Zato lavitrisa";
          textFr = "Cent-milliards";
        });
      } break;
      case 200000000000 : {
        setState(() {
          textMg = "Roanjato lavitrisa";
          textFr = "Deux-cents-milliards";
        });
      } break;
      case 300000000000 : {
        setState(() {
          textMg = "Telonjato lavitrisa";
          textFr = "Trois-cents-milliards";
        });
      } break;
      case 400000000000 : {
        setState(() {
          textMg = "Efa-jato lavitrisa";
          textFr = "Quatre-cents-milliards";
        });
      } break;
      case 500000000000 : {
        setState(() {
          textMg = "Dimanjato lavitrisa";
          textFr = "Cinq-cents-milliards";
        });
      } break;
      case 600000000000 : {
        setState(() {
          textMg = "Eninjato lavitrisa";
          textFr = "Six-cents-milliards";
        });
      } break;
      case 700000000000 : {
        setState(() {
          textMg = "Fitonjato lavitrisa";
          textFr = "Sept-cents-milliards";
        });
      } break;
      case 800000000000 : {
        setState(() {
          textMg = "Valonjato lavitrisa";
          textFr = "Huit-cents-milliards";
        });
      } break;
      case 900000000000 : {
        setState(() {
          textMg = "Sivinjato lavitrisa";
          textFr = "Neuf-cents-milliards";
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
                    NumberFormatter.formatter(widget.centMilliard).toString(),
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
                      title: "1\nZato\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 100000000000;
                          textMg = "Zato lavitrisa";
                          textFr = "Cent-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "2\nRoa\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 200000000000;
                          textMg = "Roanjato lavitrisa";
                          textFr = "Deux-cents-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "3\nTelonjato\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 300000000000;
                          textMg = "Telonjato lavitrisa";
                          textFr = "Trois-cents-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "4\nEfa-jato\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 400000000000;
                          textMg = "Efa-jato lavitrisa";
                          textFr = "Quatre-cents-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "5\nDimanjato\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 500000000000;
                          textMg = "Dimanjato lavitrisa";
                          textFr = "Cinq-cents-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "6\nEninjato\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 600000000000;
                          textMg = "Eninjato lavitrisa";
                          textFr = "Six-cents-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "7\nFitonjato\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 700000000000;
                          textMg = "Fitonjato lavitrisa";
                          textFr = "Sept-cents-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "8\nValonjato\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 800000000000;
                          textMg = "Valonjato lavitrisa";
                          textFr = "Huit-cents-milliards";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "9\nSivinjato\nlavitrisa",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centMilliard = 900000000000;
                          textMg = "Sivinjato lavitrisa";
                          textFr = "Neuf-cents-milliards";
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
                          widget.centMilliard = 0;
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
              widget.translate(type: "xxxxxxxxxxxx",number: widget.centMilliard) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}