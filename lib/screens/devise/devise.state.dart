import 'package:flutter/cupertino.dart';
import 'package:isa2/shared/app_toast.dart';
import '../../core/service/traduction.service.dart';
import 'devise.screen.dart';

class Devise extends StatefulWidget
{
  Devise({required this.contextLayout});
  BuildContext contextLayout;
  DeviseState createState() => DeviseState();
}

class DeviseState extends State<Devise>
{
  TextEditingController inputController = TextEditingController();
  String textTraduction = "";
  String textSelected   = "";
  int deviseSelected = 0; //0 : Ar / 1 : Fmg
  int deviseTraduction = 0; //0 : Ar / 1 : Fmg
  int deviseResult = 0;

  selectDeviseSelected(int devise)
  {
    setState(() {
       deviseSelected = devise;
    });
  }

  selectDeviseTraduction(int devise)
  {
    setState(() {
      deviseTraduction = devise;
    });
  }

  traduction(){
    setState(() {
      textTraduction = TraductionService.setTraduction(numberTraduction: textSelected);
    });
  }

  traductionDevise()
  {
    if(deviseSelected == 0 && deviseTraduction == 1 && int.parse(textSelected) < 50)
    {
        // Dimampolo ariary no kely indrindra (50 Ar = 250 Fmg)
        // Raha mbola kely noho io dia tsy atao
        APPToast.TOAST_ERROR("50 Ar na 250 Fmg no kely indrindra afaka atao");
        return;
    }

    if(deviseSelected == 1 && deviseTraduction == 0 && int.parse(textSelected) < 250)
    {
      // Dimampolo ariary no kely indrindra (250 Fmg = 50 Ar)
      // Raha mbola kely noho io dia tsy atao
      APPToast.TOAST_ERROR("250 Fmg na 50 Ar no kely indrindra afaka atao");
      return;
    }

    setState(() {
      int deviseResult = 0;
      if(deviseSelected == 0) // AR
      {
        if(deviseTraduction == 0) // AR
        {
          deviseResult =  int.parse(textSelected) ;
        }else{ // FMG
          deviseResult = int.parse(textSelected) * 5;
        }
      }else{ // FMG
        if(deviseTraduction == 0) // AR
        {
          deviseResult = (int.parse(textSelected) / 5).round();
        }else{
          deviseResult =  int.parse(textSelected) ;
        }
      }

      setState(() {
        this.deviseResult = deviseResult;
        textTraduction = TraductionService.setTraduction(numberTraduction: deviseResult.toString());
      });

    });
  }


  addNumber({required String numberToString})
  {
    if(textSelected.length < 12)
    {
      setState(() {
        textSelected += numberToString;
      });
    }
  }

  removeNumber(){
    if(textSelected.length > 1)
    {
      List<String> textSubstring = textSelected.split("");
      textSubstring.removeLast();
      setState(() {
        textSelected = textSubstring.join();
      });
    }else{
      setState(() {
        textSelected = "0";
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return DeviseScreen(
      inputController: inputController,
      textTraduction: textTraduction,
      textSelected : textSelected,
      deviseSelected: deviseSelected,
      deviseTraduction: deviseTraduction,
      deviseResult : deviseResult,
      traduction: traduction,
      addNumber : addNumber,
      removeNumber: removeNumber,
      selectDeviseSelected: selectDeviseSelected,
      selectDeviseTraduction: selectDeviseTraduction,
      traductionDevise : traductionDevise,
      contextLayout : widget.contextLayout
    );
  }
  
}