void main() {
  String a = "this is for    test   purpose";
  //String res = a.split(' ').where((word) => word.isNotEmpty).join(' ');
  print(removeSpace(a));
}

removeSpace(String words) {
  String result = '';
  for (var i = 0; i < words.length; i++) {
    if (words[i] == ' ') {
      if (words[i] == words[i + 1]) {
        continue;
      }
    } 
      result += words[i];
    
  }
  return result;
}
