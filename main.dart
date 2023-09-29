import 'dart:io';

void main() {
// Q1.  Write a program that takes a list
// of numbers as input and prints the even numbers in the list using a for loop.

  List<int> list01 = [22, 23, 29, 30, 32, 38, 42, 43, 44, 46, 47];
  for (var i in list01)
    if (i % 2 == 0) {
      print("required numbers from $list01 are $i");
    }

// Q2. Write a program that prints the
// Fibonacci sequence up to a given number using a for loop.

  int nth = 5;
  int n1 = 0, n2 = 1;
  for (int i = 0; i <= nth; i++) {
    print(n1);
    int n3 = n1 + n2;
    n1 = n2;
    n2 = n3;
  }

// Q3. Implement a code that checks
// whether a given number is prime or not

  int number = 13;
  var findnumber;
  for (var i = 2; i <= 100; i++)
    if (findnumber = number % i != 0)
      print("the number is not a prime number");
    else if (number % number == 0) print("the $number is a prime number");

// Q4.  Implement a code that finds the
// largest element in a list using a for loop.

  List<int> list02 = [22, 9, 1, 6, 4, 2, 8, 5, 7];

  // list02.sort();
  // print(list02.length);

  // more

  var lagest = list02[0];
  for (var i = 1; i < list02.length; i++)
    if (list02[i] > lagest) {
      lagest = list02[i];
    }
  print(lagest);

// Q5. Write a program that prints the
// multiplication table of a given number using a for loop.

  var tableof = 5;
  for (var i = 1; i <= 10; i++) {
    print("$tableof x $i = ${tableof * i}");
  }

// Q6. Implement a function that checks if a given string is a
// palindrome.

// Q7. Write a program to make such a
// pattern like a right angle triangle with a number which will repeat a number in
// a row. The pattern like

  int numpattern = 5;
  {
    for (int i = 1; i <= numpattern; i++) {
      for (int j = 1; j <= i; j++) stdout.write(i);

      stdout.writeln();
    }
  }

// Q8. Write a program that takes a list
// of numbers as input and prints the numbers greater than 5
//using a for loop and if-else condition.

// Q9.  Write a program that counts the
// number of vowels in a given string using a for loop and if-else condition.

  String data = "MY NAME IS ANAS NASEEM";

  var numofvowels = 0;

  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  data = data.toLowerCase();

  for (var i = 0; i < data.length; i++) //why we can not use <= ?
  {
    String alpha = data[i];

    if (vowels.contains(alpha)) {
      numofvowels++;
    }
  }
  print('num of vowels in $data : $numofvowels');

// Q10. Implement a code that finds the
// maximum and minimum elements in a list using a for loop and if-else condition.

  List<int> listofnum = [0, 2, 5, 8, 11, 16, 22];
  var minI = listofnum[0];
  var maxI = listofnum[0];

  for (var i = 0; i < listofnum.length; i++) {
    if (listofnum[i] > listofnum.length) {
      maxI = listofnum[i];
    }
    if (listofnum[i] < listofnum.length) {
      minI = listofnum[i];
    }
  }
  print("maximum element in list is $maxI");
  print("minimum element in list in $minI");

//WHY DIFFERENCE IN MINIMUM IN BOTH ANSWERS???

  //   List<num> listOfNum = [0, 2, 5, 8, 11, 16, 22];

  // // Initialize variables to store the maximum and minimum values
  // num max = listOfNum[0]; // Assume the first element is the maximum
  // num min = listOfNum[0]; // Assume the first element is the minimum

  // // Iterate through the list to find the maximum and minimum values
  // for (int i = 1; i < listOfNum.length; i++) {
  //   if (listOfNum[i] > max) {
  //     max = listOfNum[i];
  //   }
  //   if (listOfNum[i] < min) {
  //     min = listOfNum[i];
  //   }
  // }

  // // Print the maximum and minimum values
  // print("Maximum element: $max");
  // print("Minimum element: $min");

// Q11. Write a program that calculates the
// sum of the squares of all odd numbers in a given list using a for loop and
// if-else condition.

  var listofodd = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  var sumofsq = 0;
  for (int number in listofodd) {
    if (number % 2 != 0) {
      sumofsq += (number * number);
    }
  }
  print(sumofsq);

// Q12. Write a program that takes a list
// of student details as input, where each student is represented by a map
// containing their name, marks, section, and roll number. The program should
// determine the grade of each student based on their average score (assuming
// maximum marks for each subject is 100) and print the student's name along with
// their grade.

// List<Map<String,
// dynamic>> studentDetails = [{'name':'John', 'marks': [80, 75, 90], 'section': 'A', 'rollNumber': 101},
//   {'name':'Emma', 'marks': [95, 92, 88], 'section': 'B', 'rollNumber': 102},
// {'name': 'Ryan', 'marks': [70, 65, 75], 'section': 'A', 'rollNumber': 103},];

// Q13.  Implement a code that finds the
// average of all the negative numbers in a list using a for loop and if-else
// condition.

  var mixnum = [1, 3, 5, 2, 8, -1, -5, 9, -7, 0, -11, 6];
  var negative = 0;
  var totalnegnum = 0;
  for (int negnum in mixnum) {
    if (negnum < 0) {
      negative += negnum;
      totalnegnum++;
    }
  }
  var average = negative / totalnegnum;
  print(average);

// Q14.“SELF TEST” Write a program that
// asks the user for their email and password. You are given a list of predefined
// user credentials (email and password combinations). If the entered email and
// password match any of the credentials in the list, print "User login successful."
// Otherwise, keep asking for the email and password until the correct credentials
// are provided.

  print("Enter E-mail address");
  var email = stdin.readLineSync();
  print("Enter password");
  var password = stdin.readLineSync();

  bool auth = false;
  while (!auth) {
    if (email == "anasnaseem@gmail.com" && password == "12345") {
      auth == true;

      print("WELLCOME TO HOME PAGE");
    } else
      (auth = false);
    print("Please check your email and password");

    print("Enter E-mail address");
    email = stdin.readLineSync();
    print("Enter password");
    password = stdin.readLineSync();

    // here we are facing an error in answer i.e wellcome to home also please check comment in terminal
  }
}
