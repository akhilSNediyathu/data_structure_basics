recfactorial(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num * recfactorial(num - 1);
  }
}

main() {
  print(recfactorial(5));
}
