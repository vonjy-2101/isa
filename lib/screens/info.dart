import 'package:flag/flag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../shared/app_font.dart';
import '../shared/theme.dart';

class Info extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APPTHEMING.yellow,
        title: APPFont.setText(text: "Mombamomba",fontSize: 12.sp,color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold)
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(left: 2.w,right: 2.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 2.h),
                child: Image.asset("images/isa.png",width: 40.w,),
              ),
              //INFO DEVELOPPER
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 10),
                padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black12,width: 1,style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,2),
                          blurRadius: 5
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: APPFont.setText(text: "Mpamorona",color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold)
                    ),
                    const Divider(color: Colors.grey,),
                    Container(
                      height: 30,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 10,
                            child: Icon(Icons.account_circle_sharp,color: Colors.purple,),
                          ),
                          Positioned(
                            top: 5,
                            left: 50,
                            child: APPFont.setText(text: "Vonjy Ralijaona",color: Colors.black.withOpacity(0.4),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 10,
                            child: Icon(Icons.call,color: Colors.green),
                          ),
                          Positioned(
                            top: 5,
                            left: 50,
                            child: APPFont.setText(text: "034 16 851 01",color: Colors.black.withOpacity(0.4),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 10,
                            child: Icon(Icons.mail,color: Colors.redAccent,),
                          ),
                          Positioned(
                            top: 5,
                            left: 50,
                            child: APPFont.setText(text: "ralvonjy@gmail.com",color: Colors.black.withOpacity(0.4),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            child: Image.asset("images/facebook.png",height: 25,width: 25,),
                          ),
                          Positioned(
                            top: 5,
                            left: 50,
                            child: APPFont.setText(text: "Vonjy Ralijaona",color: Colors.black.withOpacity(0.4),)
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //INFO MG
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 10),
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black12,width: 1,style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,2),
                          blurRadius: 5
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 1.h,),
                    Row(
                      children: [
                        Flag.fromCode(FlagsCode.MG,height: 2.h,width: 10.w),
                        APPFont.setText(text: "Mombamomba",color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold)
                      ],
                    ),
                    Divider(color: Colors.grey,),
                    SizedBox(height: 1.h,),
                    APPFont.setText(text: "Ny \"Application ISA\" dia \"application\" iray hafahana mamantatra sy mamolavola ireo tarehimarika.\n "
                        "Afaka fantarina ato ny fomba fanoratra sy dika an-tsoratr'ireo tarehimarika izay tianao ho fantarina.\n "
                        "Mazotoa mampiasa ary tompoko.",color: Colors.black.withOpacity(0.4)),
                  ],
                ),
              ),

              //INFO FR
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 10),
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black12,width: 1,style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0,2),
                          blurRadius: 5
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 1.h,),
                    Row(
                      children: [
                        Flag.fromCode(FlagsCode.FR,height: 2.h,width: 10.w),
                        APPFont.setText(text: "À propos",color: Colors.black.withOpacity(0.4),fontWeight: FontWeight.bold)
                      ],
                    ),
                    const Divider(color: Colors.grey,),
                    SizedBox(height: 1.h,),
                    APPFont.setText(text: "L'Application ISA est une application qui permet de traduire les chiffres en langue malgache.\n "
                        "A partir de cette application, vous pouvez connaitre la signification des chiffres que vous voulez traduire en malgache en langue.\n ",
                        color: Colors.black.withOpacity(0.4)),
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