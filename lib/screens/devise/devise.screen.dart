import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../shared/app_button.dart';
import '../../shared/app_font.dart';
import '../../shared/number_formatter.dart';
import '../../shared/theme.dart';
import '../info.dart';

class DeviseScreen extends StatelessWidget
{
  DeviseScreen({
    required this.traduction,
    required this.textTraduction,
    required this.textSelected,
    required this.inputController,
    required this.addNumber,
    required this.deviseSelected,
    required this.deviseTraduction,
    required this.deviseResult,
    required this.contextLayout,
    required this.removeNumber,
    required this.selectDeviseSelected,
    required this.selectDeviseTraduction,
    required this.traductionDevise
  });

  TextEditingController inputController;
  String textTraduction;
  String textSelected;
  Function traduction;
  Function({ required String numberToString }) addNumber;
  Function removeNumber;
  int deviseSelected = 0; //0 : Ar / 1 : Fmg
  int deviseTraduction = 0; //0 : Ar / 1 : Fmg
  int deviseResult;
  BuildContext contextLayout;
  Function(int devise) selectDeviseSelected;
  Function(int devise) selectDeviseTraduction;
  Function traductionDevise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APPTHEMING.yellow,
        actions: [
          IconButton(
              icon: Icon(Icons.info,color: Colors.black.withOpacity(0.4),size: 20.sp,),
              onPressed: (){
                Navigator.push(contextLayout, CupertinoPageRoute(builder: (context) => Info()));
              }
          )
        ],
        title: APPFont.setText(text: "Vola",color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: APPTHEMING.AppGradient()
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /** Number Input component **/
              SizedBox(height: 2.h,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 4.w),
                child: APPFont.setText(text: "Tarehimarika voasafidy : ",color: APPTHEMING.grey,fontWeight: FontWeight.bold,textAlign: TextAlign.start),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 8.h,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    RadioListTile(
                      title: APPFont.setText(text: "Ariary",color: APPTHEMING.grey,fontWeight: FontWeight.bold),
                      value: 0,
                      groupValue: deviseSelected,
                      onChanged: (value){
                        selectDeviseSelected(value!);
                        traductionDevise();
                      },
                    ),
                    RadioListTile(
                      title: APPFont.setText(text: "Fmg",color: APPTHEMING.grey,fontWeight: FontWeight.bold),
                      value: 1,
                      groupValue: deviseSelected,
                      onChanged: (value){
                        selectDeviseSelected(value!);
                        traductionDevise();
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 2.h,right: 2.w),
                margin: EdgeInsets.only(right: 4.w,left: 4.w),
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
                child: APPFont.setText(
                  text: (textSelected != "") ? NumberFormatter.formatter(int.parse(textSelected)) : "0",
                  color: APPTHEMING.blue,fontWeight: FontWeight.bold,textAlign: TextAlign.end
                ),
              ),

              /** Translation component **/
              SizedBox(height: 2.h,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 4.w),
                child: APPFont.setText(text: "Dikan-teny : ",color: APPTHEMING.grey,fontWeight: FontWeight.bold,textAlign: TextAlign.start),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 8.h,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    RadioListTile(
                      title: APPFont.setText(text: "Ariary",color: APPTHEMING.grey,fontWeight: FontWeight.bold),
                      value: 0,
                      groupValue: deviseTraduction,
                      onChanged: (value){
                        selectDeviseTraduction(value!);
                        traductionDevise();
                      },
                    ),
                    RadioListTile(
                      title: APPFont.setText(text: "Fmg",color: APPTHEMING.grey,fontWeight: FontWeight.bold),
                      value: 1,
                      groupValue: deviseTraduction,
                      onChanged: (value){
                        selectDeviseTraduction(value!);
                        traductionDevise();
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 15.h,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 4.w,left: 4.w),
                padding: EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w),
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
                child: APPFont.setText(
                  text: (deviseTraduction == 0)
                      ? " (${NumberFormatter.formatter(deviseResult)} Ar) :  $textTraduction Ariary"
                      : " (${NumberFormatter.formatter(deviseResult)} Fmg) :  $textTraduction Fmg",
                  color: APPTHEMING.grey,
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 2.h,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 10.w,right: 10.w),
                height: 35.h,
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: ((MediaQuery.of(context).size.width/3)/10.h),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    AppButton.BUTTONLARGE(
                        title: "1",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "1");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "2",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "2");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "3",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "3");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "4",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "4");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "5",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "5");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "6",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "6");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "7",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "7");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "8",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "8");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "9",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "9");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "",
                        icon: Icon(Icons.translate,color: APPTHEMING.white,size: 20.sp,),
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        color: Colors.green,
                        onPressed: (){
                          traduction();
                          traductionDevise();
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "0",
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        onPressed: (){
                          addNumber(numberToString: "0");
                        }
                    ),
                    AppButton.BUTTONLARGE(
                        title: "",
                        icon: Icon(Icons.backspace,color: APPTHEMING.white,size: 20.sp,),
                        borderRadius: 5,
                        textAlign: TextAlign.center,
                        color: Colors.red,
                        onPressed: (){
                          removeNumber();
                        }
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}