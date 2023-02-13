class TraductionService
{

  static final List<String> _unity = [
    "","iray","roa","telo","efatra","dimy","enina","fito","valo","sivy"
  ];
  static final List<String> _tens = [
    "","folo","roa-polo","telo-polo","efa-polo","dimam-polo","enim-polo","fito-polo","valo-polo","sivy folo"
  ];
  static final List<String> _hundreds = [
    "","zato","roanjato","telonjato","efa-jato","dimanjato","eninjato","fitonjato","valonjato","sivinjato"
  ];
  static final List<String> _thousands = [
    "","arivo","roa arivo","telo arivo","efatr'arivo","dimy arivo","enina arivo","fito arivo","valo arivo","sivy arivo"
  ];
  static String _tensThousands = "alina";
  static String _hundredsHhousands = "hetsy";
  static String _million = "tapitrisa";
  static String _billion = "lavitrisa";

  /// Traduction for unity (integer to text)
  static String _unityTraduction({required String numberTraduction})
  {
    String unityTraductionResult = "";
    int lastNumberRang = numberTraduction.length;
    if(numberTraduction[lastNumberRang-1] != "0")
    {
      if(lastNumberRang > 1 && numberTraduction[lastNumberRang-1] == "1")
      {
        unityTraductionResult = "Iraika";
      }else{
        unityTraductionResult = _unity[int.parse(numberTraduction[lastNumberRang-1])];
      }

    }
    return unityTraductionResult;
  }

  /// Traduction for dizaine (integer to text)
  static String _tensTraduction({required String numberTraduction})
  {
    String tensTraductionResult = _unityTraduction(numberTraduction: numberTraduction);
    int lastNumberRang = numberTraduction.length;

    if(numberTraduction[lastNumberRang - 2] != "0")
    {
      if(numberTraduction[lastNumberRang - 1] != "0"){
        tensTraductionResult = "$tensTraductionResult amby ";
      }
      tensTraductionResult += "${_tens[int.parse(numberTraduction[lastNumberRang - 2])]}";
    }

    return tensTraductionResult;
  }

  ///Traduction for hundreds
  static String _hundredsTraduction({required String numberTraduction})
  {
    String hundredsTraductionResult = _tensTraduction(numberTraduction : numberTraduction);
    int lastNumberRang = numberTraduction.length;

    if(numberTraduction[lastNumberRang - 3] != "0")
    {
      if(numberTraduction[lastNumberRang - 1] != "0"|| numberTraduction[lastNumberRang - 2] != "0")
      {
        if(numberTraduction[lastNumberRang - 3] == "1" || numberTraduction[lastNumberRang - 2] == "0"){
          hundredsTraductionResult = "$hundredsTraductionResult amby ";
        }else{
          hundredsTraductionResult = "$hundredsTraductionResult sy ";
        }
      }
      hundredsTraductionResult += _hundreds[int.parse(numberTraduction[lastNumberRang - 3])];
    }


    return hundredsTraductionResult;
  }

  ///Traduction for thousands
  static String _thousandsTraduction({required String numberTraduction})
  {
    String thousandsTraductionResult = _hundredsTraduction(numberTraduction : numberTraduction);
    int lastNumberRang = numberTraduction.length;

    if(numberTraduction[lastNumberRang - 4] != "0"){
     if( numberTraduction[lastNumberRang - 1] != "0" ||
         numberTraduction[lastNumberRang - 2] != "0" ||
         numberTraduction[lastNumberRang - 3] != "0"){
         if(numberTraduction[lastNumberRang - 4] == "1"){
           thousandsTraductionResult = "$thousandsTraductionResult amby ";
         }else{
           thousandsTraductionResult = "$thousandsTraductionResult sy ";
         }
     }
     thousandsTraductionResult += _thousands[int.parse(numberTraduction[lastNumberRang - 4])];
    }
    return thousandsTraductionResult;
  }

  /** DIZAINE MILLIERS **/
  static String _dizaineThousandsTraduction({required String numberTraduction})
  {
    String dizaineThousandsResult = _thousandsTraduction(numberTraduction : numberTraduction);
    int lastNumberRang = numberTraduction.length;

    if(numberTraduction[lastNumberRang - 5] != "0")
    {
      dizaineThousandsResult = (dizaineThousandsResult != "")
        ? "$dizaineThousandsResult sy ${_unity[int.parse(numberTraduction[lastNumberRang-5])]} $_tensThousands"
        : "${_unity[int.parse(numberTraduction[lastNumberRang-5])]} $_tensThousands";
    }

    return dizaineThousandsResult;
  }

  /** CENTAINER MILLIERS **/
  static String _centaineThousandsTraduction({required String numberTraduction})
  {
    String centaineThousandsResult = _dizaineThousandsTraduction(numberTraduction : numberTraduction);
    int lastNumberRang = numberTraduction.length;
    if(numberTraduction[lastNumberRang - 6] != "0")
    {
      centaineThousandsResult = (centaineThousandsResult != "")
        ? "$centaineThousandsResult sy ${_unity[int.parse(numberTraduction[lastNumberRang-6])]} $_hundredsHhousands"
        : "${_unity[int.parse(numberTraduction[lastNumberRang-6])]} $_hundredsHhousands";
    }
    return centaineThousandsResult;
  }

  /** MILLIONS **/
  static String _millionsTraduction({required String numberTraduction})
  {
    String millionsResult = _centaineThousandsTraduction(numberTraduction : numberTraduction);
    int lastNumberRang = numberTraduction.length;

    /** Vérifier-na ny length ny chiffre
     *  1.000.000 = 7 (unité million)
     *  10.000.000 = 8 (dizaine million)
     *  100.000.000 = 9 (centaine million)
     * **/
    if(lastNumberRang < 10)
    {
      if(lastNumberRang == 9 && numberTraduction[lastNumberRang-9] != "0")
      {
        String centaineMillion = "${numberTraduction[lastNumberRang - 9]}${numberTraduction[lastNumberRang - 8]}${numberTraduction[lastNumberRang - 7]}";
        millionsResult = (millionsResult != "")
          ? "$millionsResult sy ${_hundredsTraduction(numberTraduction : centaineMillion)} $_million"
          : "${_hundredsTraduction(numberTraduction : centaineMillion)} $_million";
      }

      if(lastNumberRang == 8 &&  numberTraduction[lastNumberRang-8] != "0")
      {
        String dizaineMillion = "${numberTraduction[lastNumberRang - 8]}${numberTraduction[lastNumberRang - 7]}";
        millionsResult = (millionsResult != "")
          ? "$millionsResult sy ${_tensTraduction(numberTraduction : dizaineMillion)} $_million"
          : "${_tensTraduction(numberTraduction : dizaineMillion)} $_million";
      }

      if(lastNumberRang == 7 && numberTraduction[lastNumberRang-7] != "0")
      {
        millionsResult = (millionsResult != "")
          ? "$millionsResult sy ${_unity[int.parse(numberTraduction[lastNumberRang-7])]} $_million"
          : "${_unity[int.parse(numberTraduction[lastNumberRang-7])]} $_million";
      }
    }else{

      String centaineMillion = "${numberTraduction[lastNumberRang - 9]}${numberTraduction[lastNumberRang - 8]}${numberTraduction[lastNumberRang - 7]}";

      if(centaineMillion != "000"){
        millionsResult = (millionsResult != "")
            ? "$millionsResult sy ${_hundredsTraduction(numberTraduction : centaineMillion)} $_million"
            : "${_hundredsTraduction(numberTraduction : centaineMillion)} $_million";
      }
    }

    return millionsResult;
  }

  /** MILLIARD **/
  static String _milliardTraduction({required String numberTraduction})
  {
    String milliardResult = _millionsTraduction(numberTraduction : numberTraduction);
    int lastNumberRang = numberTraduction.length;

    /** Vérifier-na ny length ny chiffre
     *  1.000.000.000 = 10 (unité milliard)
     *  10.000.000.000 = 11 (dizaine milliard)
     *  100.000.000.000 = 12 (centainer milliard)
     * **/

    switch(lastNumberRang){
      case 10 : {
        milliardResult = (milliardResult != "")
          ? "$milliardResult sy ${_unity[int.parse(numberTraduction[lastNumberRang-10])]} $_billion"
          : "${_unity[int.parse(numberTraduction[lastNumberRang-10])]} $_billion";
      } break;
      case 11 : {
        String dizaineMillion = "${numberTraduction[lastNumberRang - 11]}${numberTraduction[lastNumberRang - 10]}";
        milliardResult = (milliardResult != "")
          ? "$milliardResult sy ${_tensTraduction(numberTraduction : dizaineMillion)} $_billion"
          : "${_tensTraduction(numberTraduction : dizaineMillion)} $_billion";
      } break;
      case 12 : {
        String centaineMillion = "${numberTraduction[lastNumberRang - 12]}${numberTraduction[lastNumberRang - 11]}${numberTraduction[lastNumberRang - 10]}";
        milliardResult = (milliardResult != "")
          ? "$milliardResult sy ${_hundredsTraduction(numberTraduction : centaineMillion)} $_billion"
          : "${_hundredsTraduction(numberTraduction : centaineMillion)} $_billion";
      } break;
    }

    return milliardResult;
  }

  static String _upperCaseFirstLetter(String numberText)
  {
    if(numberText.isNotEmpty)
    {
      return "${numberText[0].toUpperCase()}${numberText.substring(1).toLowerCase()}";
    }else{
      return "Aotra";
    }

  }

  static String setTraduction({required String numberTraduction}){
    String textTraduction = "";
    int lenthTextNumber = numberTraduction.length;
    switch(lenthTextNumber){
      case 1 : {
        textTraduction = TraductionService._unityTraduction(numberTraduction: numberTraduction);
      } break;
      case 2 : {
        textTraduction = TraductionService._tensTraduction(numberTraduction: numberTraduction);
      } break;
      case 3 : {
        textTraduction = TraductionService._hundredsTraduction(numberTraduction: numberTraduction);
      } break;
      case 4 : {
        textTraduction = TraductionService._thousandsTraduction(numberTraduction: numberTraduction);
      } break;
      case 5 : {
        textTraduction = TraductionService._dizaineThousandsTraduction(numberTraduction: numberTraduction);
      } break;
      case 6 : {
        textTraduction = TraductionService._centaineThousandsTraduction(numberTraduction: numberTraduction);
      } break;
      case 7 : {
        textTraduction = TraductionService._millionsTraduction(numberTraduction: numberTraduction);
      } break;
      case 8 : {
        textTraduction = TraductionService._millionsTraduction(numberTraduction: numberTraduction);
      } break;
      case 9 : {
        textTraduction = TraductionService._millionsTraduction(numberTraduction: numberTraduction);
      } break;
      case 10 : {
        textTraduction = TraductionService._milliardTraduction(numberTraduction: numberTraduction);
      } break;
      case 11 : {
        textTraduction = TraductionService._milliardTraduction(numberTraduction: numberTraduction);
      } break;
      case 12 : {
        textTraduction = TraductionService._milliardTraduction(numberTraduction: numberTraduction);
      } break;
    }
    return _upperCaseFirstLetter(textTraduction);
  }
}