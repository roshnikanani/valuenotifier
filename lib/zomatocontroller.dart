import 'package:get/get.dart';

class zomato extends GetxController
{
  RxBool t=false.obs;
  RxBool t1=false.obs;
  RxBool t2=false.obs;
  RxInt amt=0.obs;
  void check(int i, int price, bool value)
  {
    switch(i)
    {
      case 1:
        t.value=value;
        if(t==true)
        {
          amt=amt+price;
        }
        else
        {
          amt=amt-price;
        }
        break;
      case 2:
        t1.value=value;
        if(t1==true)
        {
          amt=amt+price;
        }
        else
        {
          amt=amt-price;
        }
        break;
      case 3:
        t2.value=value;
        if(t2==true)
        {
          amt=amt+price;
        }
        else
        {
          amt=amt-price;
        }
        break;
    }
  }
}