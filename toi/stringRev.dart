revRec(String name) {
  if (name.length <= 1) {
    return name;
  } else {
    return revRec(name.substring(1)) + name[0];
  }
}

reverse(String name) {
  return name.split('').reversed.join('');
}

main() {
  print(revRec("hello"));
  print(reverse('akhil'));
}
