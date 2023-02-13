import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/app_button.dart';
import '../../../shared/theme.dart';

class DialogPavnumCent extends StatefulWidget
{
  DialogPavnumCent({super.key,required this.centaine, required this.translate});
  DialogPavnumCentState createState() => DialogPavnumCentState();
  int centaine;
  Function({ required String type, required int number }) translate;
}

class DialogPavnumCentState extends State<DialogPavnumCent>
{
  String textMg = "Aotra";
  String textFr = "Zéro";
  //String textAn = "Zero";

  @override
  void initState() {
    initTranslation();
  }

  initTranslation() {
      switch (widget.centaine) {
        case 100 : {
          setState(() {
            textMg = "Zato";
            textFr = "Cent";
          });
        } break;
        case 200 : {
          setState(() {
            textMg = "Roanjato";
            textFr = "Deux-cents";
          });
        } break;
        case 300 : {
          setState(() {
            textMg = "Telonjato";
            textFr = "Trois-cents";
          });
        } break;
        case 400 : {
          setState(() {
            textMg = "Efa-jato";
            textFr = "Quatre-cents";
          });
        } break;
        case 500 : {
          setState(() {
            textMg = "Dimanjato";
            textFr = "Cinq-cents";
          });
        } break;
        case 600 : {
          setState(() {
            textMg = "Eninjato";
            textFr = "Six-cents";
          });
        } break;
        case 700 : {
          setState(() {
            textMg = "Fitonjato";
            textFr = "Sept-cents";
          });
        } break;
        case 800 : {
          setState(() {
            textMg = "Valonjato";
            textFr = "Huit-cents";
          });
        } break;
        case 900 : {
            setState(() {
              textMg = "Sivinjato";
              textFr = "Neuf-cents";
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
                    widget.centaine.toString(),
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
                      title: "100\nZato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 100;
                          textMg = "Zato";
                          textFr = "Cent";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "200\nRoanjato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 200;
                          textMg = "Roanjato";
                          textFr = "Deux-cents";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "300\nTelonjato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 300;
                          textMg = "Telonjato";
                          textFr = "Trois-cents";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "400\nEfa-jato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 400;
                          textMg = "Efa-jato";
                          textFr = "Quatre-cents";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "500\nDimanjato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 500;
                          textMg = "Dimanjato";
                          textFr = "Cinq-cents";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "600\nEninjato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 600;
                          textMg = "Eninjato";
                          textFr = "Six-cents";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "700\nFitonjato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 700;
                          textMg = "Fitonjato";
                          textFr = "Sept-cents";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "800\nValonjato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 800;
                          textMg = "Valonjato";
                          textFr = "Huit-cents";
                        });
                      }
                  ),
                  AppButton.BUTTONLARGE(
                      title: "900\nSivinjato",
                      borderRadius: 5,
                      textAlign: TextAlign.center,
                      onPressed: (){
                        setState(() {
                          widget.centaine = 900;
                          textMg = "Sivinjato";
                          textFr = "Neuf-cents";
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
                          widget.centaine = 0;
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
              widget.translate(type: "xxx",number: widget.centaine) ;
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }

}