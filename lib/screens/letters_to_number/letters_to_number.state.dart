import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isa2/screens/letters_to_number/dialog_pavnum/dialog_pavenum_diz.dart';
import 'package:isa2/screens/letters_to_number/dialog_pavnum/dialog_pavenum_mille.dart';
import 'package:isa2/screens/letters_to_number/dialog_pavnum/dialog_pavenum_milliard.dart';
import 'package:isa2/screens/letters_to_number/dialog_pavnum/dialog_pavenum_million.dart';
import 'package:isa2/screens/letters_to_number/dialog_pavnum/dialog_pavnum_dizmille.dart';
import 'package:isa2/screens/letters_to_number/dialog_pavnum/dialog_pavnum_unite.dart';
import '../../core/service/traduction.service.dart';
import 'dialog_pavnum/dialog_pavenum_cent.dart';
import 'dialog_pavnum/dialog_pavenum_centmilliard.dart';
import 'dialog_pavnum/dialog_pavenum_centmillion.dart';
import 'dialog_pavnum/dialog_pavenum_dizmilliard.dart';
import 'dialog_pavnum/dialog_pavnum_centmille.dart';
import 'dialog_pavnum/dialog_pavnum_dizmillion.dart';
import 'letters_number.screen.dart';

class LettersToNumber extends StatefulWidget
{
    LettersToNumber({required this.contextLayout});
    BuildContext contextLayout;
    LettersToNumberState createState() => LettersToNumberState();
}

class LettersToNumberState extends State<LettersToNumber>
{

    int unite        = 0;
    int dizaine      = 00;
    int centaine     = 000;
    int millier      = 0000;
    int dizMillier   = 00000;
    int centMillier  = 000000;
    int million      = 0000000;
    int dizMillion   = 00000000;
    int centMillion  = 000000000;
    int milliard     = 0000000000;
    int dizMilliard  = 00000000000;
    int centMilliard = 000000000000;

    int numberSelected = 0;
    String numberToText = "";

    translate({ required String type, required int number })
    {

        switch(type)
        {
            case "x" : { setState(() { unite = number;  }); }  break;
            case "xx" : { setState(() { dizaine = number;  }); }  break;
            case "xxx" : { setState(() { centaine = number;  }); }  break;
            case "xxxx" : { setState(() { millier = number;  }); }  break;
            case "xxxxx" : { setState(() { dizMillier = number;  }); }  break;
            case "xxxxxx" : { setState(() { centMillier = number;  }); }  break;
            case "xxxxxxx" : { setState(() { million = number;  }); }  break;
            case "xxxxxxxx" : { setState(() { dizMillion = number;  }); }  break;
            case "xxxxxxxxx" : { setState(() { centMillion = number;  }); }  break;
            case "xxxxxxxxxx" : { setState(() { milliard = number;  }); }  break;
            case "xxxxxxxxxxx" : { setState(() { dizMilliard = number;  }); }  break;
            case "xxxxxxxxxxxx" : { setState(() { centMilliard = number;  }); }  break;
        }
        setState(() {
            numberSelected = unite + dizaine + centaine + millier +
                             dizMillier + centMillier + million + dizMillion +
                             centMillion + milliard + dizMilliard + centMilliard;
            numberToText = TraductionService.setTraduction(numberTraduction: numberSelected.toString());
        });
    }

    showDialogNumberInput({required String type})
    async {
        return await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext contextDialog){
                switch(type)
                {
                    case "x" : {
                        /** Dialogue for button number (1 to 9) **/
                        return  DialogPavnumUnite(unite: unite,translate : translate);
                    }
                    case "xx" : {
                        /** Dialogue for button number (10 to 90) **/
                        return  DialogPavnumDiz(dizaine: dizaine,translate : translate);
                    }
                    case "xxx" : {
                        /** Dialogue for button number (100 to 900) **/
                        return  DialogPavnumCent(centaine: centaine,translate : translate);
                    }
                    case "xxxx" : {
                        /** Dialogue for button number (1.000 to 9.000) **/
                        return  DialogPavnumMille(millier: millier,translate : translate);
                    }
                    case "xxxxx" : {
                        /** Dialogue for button number (10.000 to 90.000) **/
                        return  DialogPavnumDizMille(dizMillier: dizMillier,translate : translate);
                    }
                    case "xxxxxx" : {
                        /** Dialogue for button number (100.000 to 900.000) **/
                        return  DialogPavnumCentMille(centMillier: centMillier,translate : translate);
                    }
                    case "xxxxxxx" : {
                        /** Dialogue for button number (1.000.000 to 9.000.000) **/
                        return  DialogPavnumMillion(million: million,translate : translate);
                    }
                    case "xxxxxxxx" : {
                        /** Dialogue for button number (10.000.000 to 90.000.000) **/
                        return  DialogPavnumDizMillion(dizMillion: dizMillion,translate : translate);
                    }
                    case "xxxxxxxxx" : {
                        /** Dialogue for button number (100.000.000 to 900.000.000) **/
                        return  DialogPavnumCentMillion(centMillion: centMillion,translate : translate);
                    }
                    case "xxxxxxxxxx" : {
                        /** Dialogue for button number (1.000.000.000 to 9.000.000.000) **/
                        return  DialogPavnumMilliard(milliard: milliard,translate : translate);
                    }
                    case "xxxxxxxxxxx" : {
                        /** Dialogue for button number (10.000.000.000 to 90.000.000.000) **/
                        return  DialogPavnumDizMilliard(dizMilliard: dizMilliard,translate : translate);
                    }
                    case "xxxxxxxxxxxx" : {
                        /** Dialogue for button number (100.000.000.000 to 900.000.000.000) **/
                        return  DialogPavnumCentMilliard(centMilliard: centMilliard,translate : translate);
                    }
                    default : {
                        return  DialogPavnumUnite(unite: unite,translate : translate);
                    }
                }

            });
    }

    @override
    Widget build(BuildContext context) {
        return LettersToNumberScreen(
            numberSelected : numberSelected,
            numberToText : numberToText,
            contextLayout : widget.contextLayout,
            showDialogNumberInput : showDialogNumberInput
        );
    }

}