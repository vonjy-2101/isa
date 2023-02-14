import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isa2/shared/app_button.dart';
import 'package:isa2/shared/number_formatter.dart';
import 'package:sizer/sizer.dart';
import '../../shared/app_font.dart';
import '../../shared/theme.dart';
import '../info.dart';

class LettersToNumberScreen extends StatelessWidget
{

  LettersToNumberScreen({
      required this.numberSelected,
      required this.numberToText,
      required this.contextLayout,
      required  this.showDialogNumberInput,
  });

  int numberSelected;
  String numberToText;
  BuildContext contextLayout;
  Function({required String type}) showDialogNumberInput;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: APPTHEMING.yellow,
          actions: [
            IconButton(
                icon: Icon(Icons.info,color: APPTHEMING.grey,size: 20.sp,),
                onPressed: (){
                  Navigator.push(contextLayout, CupertinoPageRoute(builder: (context) => Info()));
                }
            )
          ],
          title: Text(
            "Toro-làlana",
            style : TextStyle(fontFamily: 'MyriadRoman',fontSize: 12.sp,color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: APPTHEMING.AppGradient(),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w,bottom: 2.h),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.3),width: 1,))
                ),
                child: Column(
                  children: [
                    /** Number Input component **/
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 1.h),
                      child: APPFont.setText(text: "Tarehimarika voasafidy : ",color: APPTHEMING.grey,fontWeight: FontWeight.bold,textAlign: TextAlign.start),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 2.h,right: 2.w),
                      height: 6.h,
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
                      child: APPFont.setText(text: NumberFormatter.formatter(numberSelected),color: APPTHEMING.blue,fontWeight: FontWeight.bold,textAlign: TextAlign.end),
                    ),
                    SizedBox(height: 2.h,),

                    /** Translation component **/
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 1.h),
                      child: APPFont.setText(text: "Dikan-teny : ",color: APPTHEMING.grey,fontWeight: FontWeight.bold,textAlign: TextAlign.start),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 2.h,left: 2.w,right: 2.w),
                      height: 15.h,
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
                      child: APPFont.setText(text: numberToText,color: APPTHEMING.blue,fontWeight: FontWeight.bold,textAlign: TextAlign.start),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 4.h,),
                        AppButton.BUTTONLARGE(title: "1 (isa)", onPressed : (){
                          showDialogNumberInput(type: "x");
                        }),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "10 (folo)", onPressed: (){
                          showDialogNumberInput(type: "xx");
                        }),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "100 (zato)", onPressed: (){
                          showDialogNumberInput(type: "xxx");
                        }),
                        SizedBox(height: 2.h,),
                        Divider(),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "1 . 000 (arivo)", onPressed: (){
                          showDialogNumberInput(type: "xxxx");
                        }),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "10 . 000 (alina)", onPressed: (){
                          showDialogNumberInput(type: "xxxxx");
                        }),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "100 . 000 (hetsy)", onPressed: (){
                          showDialogNumberInput(type: "xxxxxx");
                        }),
                        SizedBox(height: 2.h,),
                        Divider(),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "1 . 000 . 000 (tapitrisa)", onPressed: (){
                          showDialogNumberInput(type: "xxxxxxx");
                        }),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "10 . 000 . 000 (folo tapitrisa)", onPressed: (){
                          showDialogNumberInput(type: "xxxxxxxx");
                        }),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "100 . 000 . 000 (zato tapitrisa)", onPressed: (){
                          showDialogNumberInput(type: "xxxxxxxxx");
                        }),
                        SizedBox(height: 2.h,),
                        Divider(),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "1 . 000 . 000 . 000 (lavitrisa)", onPressed: (){
                          showDialogNumberInput(type: "xxxxxxxxxx");
                        }),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "10 . 000 . 000 . 000 (folo lavitrisa)", onPressed: (){
                          showDialogNumberInput(type: "xxxxxxxxxxx");
                        }),
                        SizedBox(height: 2.h,),
                        AppButton.BUTTONLARGE(title: "100 . 000 . 000 . 000 (zato lavitrisa)", onPressed: (){
                          showDialogNumberInput(type: "xxxxxxxxxxxx");
                        }),
                        SizedBox(height: 4.h,),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      );
  }

}