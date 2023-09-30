import 'dart:io';
import 'dart:math';

void main() {
  selectOptions();
}

//Selecting Conversion
selectOptions() {
  print("Select any of below options (Press): ");
  print("1: Length Conversion");
  print("2: Temperature Conversion");
  print("3: Area Conversion");
  print("4: Weight Conversion");
  print("5: Time Conversion");

  int userInput = int.parse(stdin.readLineSync()!);

  if (userInput == 1) {
    lengthConversion();
  } else if (userInput == 2) {
    temperatureConversion();
  } else if (userInput == 3) {
    areaConversion();
  } else if (userInput == 4) {
    weightConversion();
  } else if (userInput == 5) {
    timeConversion();
  } else {
    print("Invalid Input");
  }
}

//Conversions Functions
lengthConversion() {
  print("Select any of below length conversions (Press): ");
  print("1: Meters to Kilometers");
  print("2: Kilometers to Meters");
  print("3: Feets to Inches");
  print("4: Inches to Feets");
  print("5: Centimeters to Meters");
  print("6: Meters to Centimeters");

  int userInput = int.parse(stdin.readLineSync()!);

  if (userInput == 1) {
    metersToKilometers();
  } else if (userInput == 2) {
    kilometersToMeters();
  } else if (userInput == 3) {
    feetsToInches();
  } else if (userInput == 4) {
    inchesToFeets();
  } else if (userInput == 5) {
    centimetersToMeters();
  } else if (userInput == 6) {
    metersToCentimeters();
  } else {
    print("Invalid Input");
  }
}

temperatureConversion() {
  print("Select any of below temperature conversions (Press): ");
  print("1: Fahrenheit to Celcius");
  print("2: Celcius to Fahrenheit");

  int userInput = int.parse(stdin.readLineSync()!);

  if (userInput == 1) {
    fahrenheitToCelcius();
  } else if (userInput == 2) {
    celciusToFahrenheit();
  } else {
    print("Invalid Input");
  }
}

areaConversion() {
  print("Sslect any of below area conversion (Press): ");
  print("1: Square Miles to Square Yards");
  print("2: Square Yards to Square Miles");
  print("3: Square Yards to Square Foots");
  print("4: Square Foot to Square Yards");

  int userInput = int.parse(stdin.readLineSync()!);

  if (userInput == 1) {
    squareMilestoSquareYards();
  } else if (userInput == 2) {
    squareYardstoSquareMiles();
  } else if (userInput == 3) {
    squareYardstoSquareFoots();
  } else if (userInput == 4) {
    squareFootstoSquareYards();
  } else {
    print("Invalid Input");
  }
}

weightConversion() {
  print("Select any of below weight conversions (Press): ");
  print("1: Kilograms to Grams");
  print("2: Grams to Kilograms");
  print("3: Pounds to Kilograms");
  print("4: Kilograms to Tons");
  print("5: Tons to Kilograms");

  int userInput = int.parse(stdin.readLineSync()!);

  if (userInput == 1) {
    kilogramToGram();
  } else if (userInput == 2) {
    gramToKilogram();
  } else if (userInput == 3) {
    poundToKilogram();
  } else if (userInput == 4) {
    kilogramsToTons();
  } else if (userInput == 5) {
    tonToKilogram();
  } else {
    print("Invalid Input");
  }
}

timeConversion() {
  print("Select any of the below time conversion (Press): ");
  print("1: Seconds to Minutes");
  print("2: Minutes to Seconds");
  print("3: Minutes to Hours");
  print("4: Seconds to Hours");
  print("5: Milliseconds to Minutes");
  print("6: Milliseconds to Hours");

  int userInput = int.parse(stdin.readLineSync()!);
  if (userInput == 1) {
    secondsToMinutes();
  } else if (userInput == 2) {
    minutesToSeconds();
  } else if (userInput == 3) {
    minutesToHours();
  } else if (userInput == 4) {
    secondsToHours();
  } else if (userInput == 5) {
    millisecondsToMinutes();
  } else if (userInput == 6) {
    millisecondsToHours();
  } else {
    print("Invalid Input");
  }
}

//Length Unit Functions
metersToKilometers() {
  print("Enter meters value: ");

  double meters = double.parse(stdin.readLineSync()!);
  double kilometers = meters / 1000;

  print("$meters meters equals to $kilometers kilometers");
  repeatCalculations();
}

kilometersToMeters() {
  print("Enter Kilometers value: ");

  double kilometers = double.parse(stdin.readLineSync()!);
  double meters = kilometers * 1000;

  print("$kilometers kilometers equals to $meters meters");
  repeatCalculations();
}

feetsToInches() {
  print("Enter Feets value: ");

  double feets = double.parse(stdin.readLineSync()!);
  double inches = feets * 12;

  print("$feets feets equals to $inches inches");
  repeatCalculations();
}

inchesToFeets() {
  print("Enter Inches value: ");

  double inches = double.parse(stdin.readLineSync()!);
  double feets = inches / 12;

  print("$inches inches equals to $feets feets");
  repeatCalculations();
}

centimetersToMeters() {
  print("Enter Centimeters value: ");

  double centimeters = double.parse(stdin.readLineSync()!);
  double meters = centimeters / 100;

  print("$centimeters centimeters equals to $meters meters");
  repeatCalculations();
}

metersToCentimeters() {
  print("Enter Meters value: ");

  double meters = double.parse(stdin.readLineSync()!);
  double centimeters = meters * 100;

  print("$meters meters equals to $centimeters centimeters");
  repeatCalculations();
}

//Temperature Unit Functions
fahrenheitToCelcius() {
  print("Enter Fahrenheit value: ");

  double fahrenheit = double.parse(stdin.readLineSync()!);
  double celcius = (fahrenheit - 32) * 5 / 9;

  print("$fahrenheit fahrenheit equals to $celcius celcius");
  repeatCalculations();
}

celciusToFahrenheit() {
  print("Enter Celcius value: ");

  double celcius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (celcius * 9 / 5) + 32;

  print("$celcius celcius equals to $fahrenheit fahrenheit");
  repeatCalculations();
}

//Area Unit Functions
squareMilestoSquareYards() {
  print("Enter Square Miles value: ");

  double squaremiles = double.parse(stdin.readLineSync()!);
  double squareyards = squaremiles * 3097599.999598;

  print("$squaremiles sq mi equals to $squareyards sq yd");

  repeatCalculations();
}

squareYardstoSquareMiles() {
  print("Enter Square Yard value: ");

  double squareyards = double.parse(stdin.readLineSync()!);
  double squaremiles = squareyards / 3097599.999598;

  print("$squareyards sq yd is equals to $squaremiles sq mi");

  repeatCalculations();
}

squareYardstoSquareFoots() {
  print("Enter Square Yards value: ");

  double squareyard = double.parse(stdin.readLineSync()!);
  double squarefoot = squareyard * 9;

  print("$squareyard sq yd is equals to $squarefoot sq ft");

  repeatCalculations();
}

squareFootstoSquareYards() {
  print("Enter Square foot value: ");

  double squarefoot = double.parse(stdin.readLineSync()!);
  double squareyard = squarefoot / 9;

  print("$squarefoot sq ft equals to $squareyard sq yd");

  repeatCalculations();
}

// Weight Unit Functions
kilogramToGram() {
  print("Enter Kilogram value");

  double kilogram = double.parse(stdin.readLineSync()!);
  double gram = kilogram * 1000;

  print("$kilogram Kg is equals to $gram g");

  repeatCalculations();
}

gramToKilogram() {
  print("Enter Gram value");

  double gram = double.parse(stdin.readLineSync()!);
  double kilogram = gram / 1000;

  print("$gram g is equals to $kilogram kg");

  repeatCalculations();
}

poundToKilogram() {
  print("Enter pound value: ");

  double pound = double.parse(stdin.readLineSync()!);
  double kilogram = pound * 0.453592;

  print("$pound lb is equals to $kilogram kg");

  repeatCalculations();
}

kilogramsToTons() {
  print("Ener Kilogram value: ");

  double kilogram = double.parse(stdin.readLineSync()!);
  double ton = kilogram / 1000;

  print("$kilogram kg equals to $ton t");

  repeatCalculations();
}

tonToKilogram() {
  print("Enter Ton value: ");

  double ton = double.parse(stdin.readLineSync()!);
  double kilogram = ton * 1000;

  print("$ton t equals to $kilogram kg");

  repeatCalculations();
}

// Time Unit Fuctions
secondsToMinutes() {
  print("Enter Seconds value: ");

  double seconds = double.parse(stdin.readLineSync()!);
  double minutes = seconds / 60;

  print("$seconds sec equals to $minutes min");
  repeatCalculations();
}

minutesToSeconds() {
  print("Ener Minutes value: ");

  double minutes = double.parse(stdin.readLineSync()!);
  double seconds = minutes * 60;

  print("$minutes min equals to $seconds sec");

  repeatCalculations();
}

minutesToHours() {
  print("Ener Minutes value: ");

  double minutes = double.parse(stdin.readLineSync()!);
  double hours = minutes / 60;

  print("$minutes min equals to $hours hrs");

  repeatCalculations();
}

secondsToHours() {
  print("Enter Seconds value: ");

  double seconds = double.parse(stdin.readLineSync()!);
  double hours = (seconds / 60) / 60;

  print("$seconds sec equals to $hours hrs");

  repeatCalculations();
}

millisecondsToMinutes() {
  print("Enter Milliseconds value: ");

  double milliseconds = double.parse(stdin.readLineSync()!);
  double minutes = milliseconds / 1000 / 60;

  print("$milliseconds sec equals to $minutes min");

  repeatCalculations();
}

millisecondsToHours() {
  print("Enter Milliseconds value: ");

  double millisecond = double.parse(stdin.readLineSync()!);
  double hours = millisecond / 1000 / 60 / 60;

  print("$millisecond sec equals to $hours hrs");

  repeatCalculations();
}

//Repeat Calculations
repeatCalculations() {
  print("Do you want to continue? (Press)");
  print("1: Yes");
  print("2: No");

  int userInput = int.parse(stdin.readLineSync()!);

  if (userInput == 1) {
    selectOptions();
  } else if (userInput == 2) {
    print("Thankyou for using me");
  } else {
    print("Invalid Input");
  }
}
