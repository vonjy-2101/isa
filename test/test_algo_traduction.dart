import 'package:flutter_test/flutter_test.dart';
import 'package:isa2/core/service/traduction.service.dart';

void main()
{
  test('traduction unité', (){
    String unite = TraductionService.setTraduction(numberTraduction: "6");
    print(" - $unite");
  });


}