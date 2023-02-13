import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/number_formatter.dart';
import '../../../shared/theme.dart';

class DialogPavnumUnite extends StatefulWidget
{
  DialogPavnumUnite({super.key,required this.unite,required this.translate});
  DialogPavnumUniteState createState() => DialogPavnumUniteState();
  int unite;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumUniteState extends State<DialogPavnumUnite>
{
    String textMg = "Aotra";
    String textFr = "Zéro";
    String textAn = "Zero";

    void initState() {
      initTranslation();
    }

    initTranslation() {
      switch (widget.unite) {
        case 1 : {
          setState(() {
            textMg = "Iray";
            textFr = "Un";
          });
        } break;
        case 2 : {
          setState(() {
            textMg = "Roa";
            textFr = "Deux";
          });
        } break;
        case 3 : {
          setState(() {
            textMg = "Telo";
            textFr = "Trois";
          });
        } break;
        case 4 : {
          setState(() {
            textMg = "Efatra";
            textFr = "Quatre";
          });
        } break;
        case 5 : {
          setState(() {
            textMg = "Dimy";
            textFr = "Cinq";
          });
        } break;
        case 6 : {
          setState(() {
            textMg = "Enina";
            textFr = "Six";
          });
        } break;
        case 7 : {
          setState(() {
            textMg = "Fito";
            textFr = "Sept";
          });
        } break;
        case 8 : {
          setState(() {
            textMg = "Valo";
            textFr = "Huit";
          });
        } break;
        case 9 : {
          setState(() {
            textMg = "Sivy";
            textFr = "Neuf";
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
                        NumberFormatter.formatter(widget.unite).toString(),
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
                    childAspectRatio: ((MediaQuery.of(context).size.width/3)/10.h),
                    children: [
                      AppButton.BUTTONLARGE(
                          title: "1\nIray(ka)",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                           setState(() {
                             widget.unite = 1;
                             textMg = "Iray";
                             textFr = "Un";
                           });
                          }
                      ),
                      AppButton.BUTTONLARGE(
                          title: "2\nRoa",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                            setState(() {
                              widget.unite = 2;
                              textMg = "Roa";
                              textFr = "Deux";
                            });
                          }
                      ),
                      AppButton.BUTTONLARGE(
                          title: "3\nTelo",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                            setState(() {
                              widget.unite = 3;
                              textMg = "Telo";
                              textFr = "Trois";
                            });
                          }
                      ),
                      AppButton.BUTTONLARGE(
                          title: "4\nEfatra",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                            setState(() {
                              widget.unite = 4;
                              textMg = "Efatra";
                              textFr = "Quatre";
                            });
                          }
                      ),
                      AppButton.BUTTONLARGE(
                          title: "5\nDimy",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                            setState(() {
                              widget.unite = 5;
                              textMg = "Dimy";
                              textFr = "Cinq";
                            });
                          }
                      ),
                      AppButton.BUTTONLARGE(
                          title: "6\nEnina",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                            setState(() {
                              widget.unite = 6;
                              textMg = "Enina";
                              textFr = "Six";
                            });
                          }
                      ),
                      AppButton.BUTTONLARGE(
                          title: "7\nFito",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                            setState(() {
                              widget.unite = 7;
                              textMg = "Fito";
                              textFr = "Sept";
                            });
                          }
                      ),
                      AppButton.BUTTONLARGE(
                          title: "8\nValo",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                            setState(() {
                              widget.unite = 8;
                              textMg = "Valo";
                              textFr = "Huit";
                            });
                          }
                      ),
                      AppButton.BUTTONLARGE(
                          title: "9\nSivy",
                          borderRadius: 5,
                          textAlign: TextAlign.center,
                          onPressed: (){
                            setState(() {
                              widget.unite = 9;
                              textMg = "Sivy";
                              textFr = "Neuf";
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
                              widget.unite = 0;
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
                  widget.translate(type: "x", number: widget.unite);
                  Navigator.pop(context);
                })
              ],
            ),
          ),
        );
    }

}