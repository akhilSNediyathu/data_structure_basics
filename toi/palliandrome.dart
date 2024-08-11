bool isPaliandrome(String input) {
  if (input == input.split('').reversed.join('')) {
    return true;
  } else {
    return false;
  }
}

simpleWay(String input) {
  int start = 0;
  int end = input.length - 1;
  while (start < end) {
    if (input[start] != input[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}

main() {
  print(isPaliandrome('mommy'));
  print(simpleWay('mommom'));
}
