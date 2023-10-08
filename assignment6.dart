import 'dart:io';
import 'dart:math';

void main() {
  listOfQueandAns();
}

listOfQueandAns() {
  {
    Map listofQandA = {
      1: {"Q": "What is the meaning of Pakistan?", "A": "Holy Land"},
      2: {"Q": "When the name 'Pakistan' was first used", "A": "28 Feb 1993"},
      3: {
        "Q": "By whome the name 'Pakistan' was first used?",
        "A": "CH. Rehmat Ali"
      },
      4: {"Q": "Who designed Pakistan‘s national flag?", "A": "Ameer Uddin"},
      5: {
        "Q": "What is the Governmental Name of Pakistan?",
        "A": "Islamic Republic of Pakistan"
      },
      6: {"Q": "Which is the national animal of Pakistan?", "A": "Markhor"},
      7: {"Q": "Which is the national bird of Pakistan?", "A": "Chakor"},
      8: {"Q": "Which is the capital of Pakistan?", "A": "Islamabad"},
      9: {"Q": "What is Area of Pakistan?", "A": "796096 sq km"},
      10: {
        "Q": "Which is the Highest place/peak of Pakistan?",
        "A": "K-2 Mountain"
      },
      11: {
        "Q": "Which is the lowest (down) place in Pakistan?",
        "A": "Karachi"
      },
      12: {"Q": "How is Pakistan‘s film industry known?", "A": "Lollywood"},
      13: {
        "Q": "Which is the longest and biggest river of Pakistan?",
        "A": "Indus River"
      },
      14: {
        "Q": "Which are the popular rivers‘s of Punjab?",
        "A": "Jhelum, Ravi, Sutlej and Chenab"
      },
      15: {"Q": "Which is the national language of Pakistan?", "A": "Urdu"},
      16: {
        "Q": "According to population which is the largest city of Pakistan?",
        "A": "Karachi"
      },
      17: {
        "Q": "According to population which is the smallest city of Pakistan?",
        "A": "Ziarat"
      },
      18: {
        "Q": "How many languages are spoken in Pakistan?",
        "A": "32 languages"
      },
      19: {
        "Q": "Which are the well known languages of Pakistan?",
        "A": " Urdu, Punjabi, Pashto, Sindhi, Balochi"
      },
      20: {
        "Q": "When Pakistan became the member of United Nations?",
        "A": "30 December 1947"
      },
      21: {
        "Q": "How many Nishan-i-Haider were given In Pak India 1965 war?",
        "A": "Only one Nishan-i-Haider"
      },
      22: {
        "Q": "Who was awarede by the Nishan-i-Haider in 1965 war?",
        "A": "Major Aziz Bhatti"
      },
      23: {
        "Q": "In which year did Pakistan win the Cricket World Cup?",
        "A": "1992"
      },
      24: {"Q": "Which is the national flower of Pakistan?", "A": "Jasmine"},
      25: {"Q": "When Pakistan came into being?", "A": "14th August 1947"},
      26: {
        "Q": "When Quaid-E-Azam Muhammad Ali Jinnah born?",
        "A": "25th December 1876"
      },
      27: {"Q": "When Allama Muhammad Iqbal born?", "A": "9th November 1877"},
      28: {"Q": "When Sir Syed Ahmed Khan born?", "A": "17th October 1817"},
      29: {"Q": "When Liaquat Ali Khan born?", "A": "1st October 1895"},
      30: {"Q": "When Fatimah Jinnah born?", "A": "31st July 1893"},
      32: {"Q": "Who gave the Two Nation Theory?", "A": "Sir Syed Ahmed Khan"},
      33: {
        "Q": "Who was the first prime minister of Pakistan?",
        "A": "Liaquat Ali Khan"
      },
      34: {"Q": "When was Liaquat Ali Khan died?", "A": "16th October 1951"},
      35: {
        "Q": "When Quaid-E-Azam Muhammad Ali Jinnah died?",
        "A": "11th September 1948"
      },
      36: {"Q": "When Allama Muhammad Iqbal died?", "A": "21st April 1938"},
      37: {"Q": "When Fatimah Jinnah died?", "A": "9th July 1967"},
      38: {
        "Q": "Who is the founder of Aligarh University?",
        "A": "Sir Syed Ahmed Khan"
      },
      39: {
        "Q": "Wha is the duration of Pakistan's national anthem?",
        "A": "80 seconds"
      },
      40: {"Q": "When the national anthem of Pakistan composed?", "A": "1949"},
    };
    askquestions(listofQandA);
  }
}

randomNumbers() {
  Random randomobj = Random();
  int randomNumbers = randomobj.nextInt(40) + 1;
  return randomNumbers;
}

askquestions(listofQandA) {
  int randonNum = 0;
  int totalQues = 20;
  String? userInput = "";
  int correctAnswers = 0;

  for (var i = 1; i <= totalQues; i++) {
    randonNum = randomNumbers();

    print("Question " " $i: " + listofQandA[randonNum]["Q"]);

    userInput = stdin.readLineSync();

    if (userInput == listofQandA[randonNum]["A"]) {
      correctAnswers = correctAnswers + 1;
    } else
      (print("False"));
  }
  getResult(totalQues, correctAnswers);
  repeat();
}

getResult(totalQues, correctAnswers) {
  double percentage = (correctAnswers / totalQues) * 100;

  if (percentage >= 50) {
    print("Congratulations you have passes the quiz with $percentage%.");
  } else
    (print("Sorry you lose. Try next time"));
}

repeat() {
  print("Do you want to repeat the quiz?");
  print("1: Yes");
  print("2: No");
  var userInput = int.parse(stdin.readLineSync()!);
  if (userInput == 1) {
    listOfQueandAns();
  } else if (userInput == 2) {
    print("Thankyou!");
  } else
    (print("Invalid input"));
}
