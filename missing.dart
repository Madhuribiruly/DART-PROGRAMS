/*Q4. Find the Missing Number
You are given a list of n-1 integers and these integers are in the range of 1 to n. There are no duplicates in the list. One of the integers is 

missing in the list. Write an efficient code to find the missing integer.
Input: arr[] = {1, 2, 4, 6, 3, 7, 8} Output: 5
Input: arr[] = {1, 2, 3, 5} Output: 4*/
import 'dart:io';

void main() {
  stdout.write("Enter size of List : ");
  var n = int.parse(stdin.readLineSync());

  List<int> lst = new List(n);

  for (int i = 0; i < lst.length; i++) {
    lst[i] = int.parse(stdin.readLineSync());
  }

  lst.sort((a, b) => a - b);
  Set<int> set = new Set<int>.from(lst);
  stdout.write("Missing Numbers are : ");
  for (int i = set.first; i < set.last; i++) {
    (set.contains(i)) ? '' : stdout.write("$i \t");
  }
}