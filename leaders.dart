/*Q3. Find the Leader Element in an Array
Write a program to print all the LEADERS in the array. An element is leader if it is greater than all the elements to its right side. And the 
rightmost element is always a leader. For example int the array {300,40,60,90,100,12,16, 17, 4, 3, 5, 2}, leaders are 300,100,17, 5 and 2.*/
import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  var n = int.parse(stdin.readLineSync());

  List<int> lst = new List(n);

  for (int i = 0; i < n; i++) {
    lst[i] = int.parse(stdin.readLineSync());
  }
  stdout.write("Leaders Are : ");
  int maxValue = lst[n - 1];
  for (int i = (lst.length - 1); i >= 0; i--) {
    if (lst[i] >= maxValue) {
      stdout.write("${maxValue = lst[i]} \t");
    }
  }
}