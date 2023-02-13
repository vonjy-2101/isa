import 'package:flutter/cupertino.dart';
import '../../core/service/traduction.service.dart';
import 'home.screen.dart';

class Home extends StatefulWidget{
    Home({required this.contextLayout});
    BuildContext contextLayout;
    HomeState createState() => HomeState();
}

class HomeState extends State<Home>{

    TextEditingController inputController = TextEditingController();
    String textTraduction = "";
    String textSelected   = "";

    traduction(){
        setState(() {
            textTraduction = TraductionService.setTraduction(numberTraduction: textSelected);
            print(textTraduction);
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
        return HomeScreen(
            inputController: inputController,
            textTraduction: textTraduction,
            textSelected : textSelected,
            traduction: traduction,
            addNumber : addNumber,
            removeNumber: removeNumber,
            contextLayout : widget.contextLayout
        );
    }

}