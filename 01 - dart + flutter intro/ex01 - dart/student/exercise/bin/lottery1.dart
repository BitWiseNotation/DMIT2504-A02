// this is a direct program so we need a main function
// we need a fucntion that takes user input 
// we need a function that returns a list of 6 ints ranging from 1-49 inclusively 
// need to make sure no duplicates in list


//2. command-line user inputs: I need to iuimport dart:io module

import 'dart:io';


void main(){
  stdout.write("How many lottery numbers to pick ? ");
  int count = int.parse(stdin.readLineSync()!);

  stdout.write("what is the upper bound of number to pick (inclusive) ? ");
  int highestnum = int.parse(stdin.readLineSync()!);
}