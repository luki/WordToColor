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

List<String>checkLength(List<String> input) {

  var tempChain = input.join('').split('');
  List<String> newChain = [];
  for (int i = 0; i < tempChain.length; i++) {
    newChain.add(tempChain[i]);
  }
  if (newChain.length > 6) {
    var tempWordChain = newChain;
    while(tempWordChain.length > 6) {
      tempWordChain.removeLast();
    }
    return tempWordChain;
  } else {
    return newChain;
  }
}

String translateWord(String input) {
  var tempWordChain = input.split('');
  var newWordChain = new List<String>();
  for (int i = 0; i < input.length; i++) {
    newWordChain.add(translateChar(tempWordChain[i]));
  }
  return checkLength(newWordChain).join('');
}
