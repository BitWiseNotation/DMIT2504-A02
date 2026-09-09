// I will need a class that contains the method GET TOTAL 
// this method will take user input for loonies,twoonies, quater, dimes, nickel, pennies
// it should be integer not float or double. and input must be positive 
// I need some sort of function to validate negative value is not allowed


import 'dart:async';
import 'dart:ffi';
import 'dart:io';


void main(){
    List<String> types= ["Pennies", "Nickels", "Dimes", "Quarters", "Loonies", "Toonies"];
    List<int> Values = List.filled(6, 0);
    //print(Values);
    for (var i=0,j=0; i<types.length; i++, j++) {
      var element = types[i];
      print("Enter the number of  $element");
      int enteredValue = int.parse(stdin.readLineSync()!);
      if (enteredValue<0) {
        print("Negative values are not allowed");
      } else {
        Values[j] = enteredValue;
      }
    }
    //print(Values);
    Pocket Mypocket = Pocket(Values[0], Values[1], Values[2], Values[3], Values[4], Values[5]);
    double total = Mypocket.getTotal();
    print("\$"+ total.toStringAsFixed(2));
}


class Pocket{
  // values are in Final beacuase they cannot be changed 
  // final double penny = 0.01;   
  // final double nickel = 0.05;
  // final double dime = 0.10;
  // final double quarter = 0.25;
  // final double loonie = 1.00;
  // final double toonie = 2.00;
  int pennies, nickels, dimes, quarters, loonies, twoonies;

  Pocket(this.pennies, this.nickels, this.dimes, this.quarters, this.loonies, this.twoonies);



  //method for total 

  double getTotal(){
    final double penny = 0.01;   
    final double nickel = 0.05;
    final double dime = 0.10;
    final double quarter = 0.25;
    final double loonie = 1.00;
    final double twoonie = 2.00;
    double total = penny*pennies + nickel*nickels + dime*dimes + quarter*quarters + loonie * loonies + twoonie*twoonies;
    return(double.parse(total.toStringAsFixed(2)));
  }

}