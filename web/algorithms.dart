String combine(String input) => checkLength(arrayToSingularElements(toColorBlockArray(input))).join('');

List<String> toColorBlockArray(String input) {
  List<String> letterBlock = input.split('');
  var colorBlock = [];
  for (int i = 0; i < letterBlock.length -1; i++) {
    colorBlock.add(translateChar(letterBlock[i]));
  }
  return colorBlock;
}

List<String> arrayToSingularElements(List<String> input) => input.join('').split('');

List<String> checkLength(List<String> input) {
  var tempOutput = new List<String>.from(input);
  var difference = (tempOutput.length/6).round() + 1;
  while (tempOutput.length > 6) {
    var index = 0;
    for (index; index < tempOutput.length - 1; index = index + difference) {
        print("Removing $tempOutput[index] at index $index");
        tempOutput.removeAt(index);
      }
  }
  return tempOutput;
}

String translateChar(String input) {
  switch(input.toUpperCase()) {
      case "A":
        return "1";
      case "B":
        return "2";
      case "C":
        return "3";
      case "D":
        return "4";
      case "E":
        return "5";
      case "F":
        return "6";
      case "G":
        return "7";
      case "H":
        return "8";
      case "I":
        return "9";
      case "J":
        return "A";
      case "K":
        return "B";
      case "L":
        return "C";
      case "M":
        return "D";
      case "N":
        return "E";
      case "O":
        return "F";
      case "P":
        return "A";
      case "Q":
        return "B";
      case "R":
        return "C";
      case "S":
        return "D";
      case "T":
        return "E";
      case "U":
        return "F";
      case "V":
        return "AA";
      case "W":
        return "BB";
      case "X":
        return "CC";
      case "Y":
        return "DD";
      case "Z":
        return "EE";
      default:
        return "";
  }
}
