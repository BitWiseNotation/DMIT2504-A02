// this is a direct program so we need a main function
// we need a fucntion that takes user input 
// we need a function that returns a list of 6 ints ranging from 1-49 inclusively 
// need to make sure no duplicates in list


//2. command-line user inputs: I need to iuimport dart:io module

import 'dart:io';
import 'dart:math';


void main(){
  stdout.write("How many lottery numbers to pick ? ");
  int count = int.parse(stdin.readLineSync()!);

  stdout.write("what is the upper bound of number to pick (inclusive) ? ");
  int highestnum = int.parse(stdin.readLineSync()!);
  // List<int> stored= lot(count);
  // print(stored);
  // generate count numbers  between 1 and largest num
  Random rng = Random();
  //List<int> LotoNumbers = List.filled(count, 0); Used for list  method only 
  Set<int> LotoNum = {};   // using for set method

  // Set way of doing things 
  for(int i =0; i<count; i++){
    int value;
    value = rng.nextInt(highestnum)+1;
    if(LotoNum.length<6){
      LotoNum.add(value);
    }
    else{
      i--;
    }
  }

  // for(int i =1; i<= count; i++){
  //   int value;
  //   value = rng.nextInt(highestnum)+1;
  //   print(value);
  // }

  // Incremental method
  //   for(int i =0; i< count; i++){
  //   int value;
  //   value = rng.nextInt(highestnum)+1;
  //   if(LotoNumbers.contains(value)){
  //     i--;
  //   }
  //   else{
  //     LotoNumbers[i]= value;
  //   }
  // }


  
  print(LotoNum);


}


// THIS IS MY CODE BUT ONLY WORKS FOR MANUAL INPUTS
// List<int> lot(i,h){
//   List<int> storage=[];
//   for (var a=0; a<i; a++){
//     print("Enter your number: ");
//     int number = int.parse(stdin.readLineSync()!);
//     if (storage.contains(number)){
//       print("please enter another number");
//       a--;
//     }
//     else if(number>h){
//       print("The upper limit is $h");
//     }
//     else{
//       storage.add(number);
//     }
//   }
//   return storage;
// }